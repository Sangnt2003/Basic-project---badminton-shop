using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;

namespace SH_SHOP.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "SuperAdmin,Admin")]
    public class AdminController : Controller
    {
        private readonly UserManager<User> _userManager;
        private readonly ApplicationDbContext _context;
        public AdminController(UserManager<User> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }
        public  IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> Authorization()
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserRoles = await _userManager.GetRolesAsync(currentUser);

            List<IdentityRole> roles;
            if (currentUserRoles.Contains("SuperAdmin"))
            {
                roles = await _context.Roles.ToListAsync();
            }
            else if (currentUserRoles.Contains("Admin"))
            {
                roles = await _context.Roles.Where(r => r.Name == "Admin" || r.Name == "Manager" || r.Name == "Customer").ToListAsync();
            }
            else
            {
                roles = new List<IdentityRole>();
            }

            ViewBag.Role = new SelectList(roles, "Id", "Name");

            var query = from user in _context.Users
                        join userRoles in _context.UserRoles on user.Id equals userRoles.UserId
                        join role in _context.Roles on userRoles.RoleId equals role.Id
                        select new
                        {
                            UserId = user.Id,
                            user.UserName,
                            role.Name,
                        };
            var list = await query.ToListAsync();
            return View(list);
        }
        [HttpPost]
        public async Task<IActionResult> UpdateUserRole(string userId, string roleId)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserRoles = await _userManager.GetRolesAsync(currentUser);
            if (!currentUserRoles.Contains("SuperAdmin") && !currentUserRoles.Contains("Admin"))
            {
                return Forbid();
            }
            var user = await _userManager.FindByIdAsync(userId);
            if (user == null)
            {
                return NotFound();
            }

            var roles = await _userManager.GetRolesAsync(user);
            await _userManager.RemoveFromRolesAsync(user, roles.ToArray());

            var role = await _context.Roles.FindAsync(roleId);
            if (role == null)
            {
                return NotFound();
            }

            if (currentUserRoles.Contains("Admin") && role.Name == "SuperAdmin")
            {
                return Forbid();
            }
            await _userManager.AddToRoleAsync(user, role.Name);
            return RedirectToAction(nameof(Index));
        }
        public async Task<IActionResult> DeleteUser(string userId)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserRoles = await _userManager.GetRolesAsync(currentUser);

            var userToDelete = await _userManager.FindByIdAsync(userId);
            if (userToDelete == null)
            {
                return NotFound();
            }

            var userRoles = await _userManager.GetRolesAsync(userToDelete);

            if (currentUserRoles.Contains("SuperAdmin") && !userRoles.Contains("SuperAdmin"))
            {
                await _userManager.DeleteAsync(userToDelete);
                return RedirectToAction(nameof(Index));
            }
            else if (currentUserRoles.Contains("Admin") && ( userRoles.Contains("Customer") || userRoles.Contains("Manager")))
            {
                await _userManager.DeleteAsync(userToDelete);
                return RedirectToAction(nameof(Index));
            }
            return Forbid();
        }
        public async Task<IActionResult> UserStatistics()
        {
            var userCountByRole = await _context.Roles
                .Select(role => new
                {
                    RoleName = role.Name,
                    UserCount = _context.UserRoles.Count(ur => ur.RoleId == role.Id)
                })
                .ToListAsync();

            return View(userCountByRole);
        }

        public async Task<IActionResult> MonthlySalesStatistics()
        {
            var monthlySales = await _context.Orders
                .GroupBy(o => new { o.OrderDate.Year, o.OrderDate.Month })
                .Select(g => new
                {
                    Year = g.Key.Year,
                    Month = g.Key.Month,
                    OrderCount = g.Count()
                })
                .ToListAsync();

            return View(monthlySales);
        }

        public async Task<IActionResult> TopSellingProducts()
        {
            var topSellingProducts = await _context.OrderDetails
                .GroupBy(od => od.ProductId)
                .Select(g => new
                {
                    ProductId = g.Key,
                    TotalSold = g.Sum(od => od.Quantity)
                })
                .OrderByDescending(g => g.TotalSold)
                .Take(10)
                .ToListAsync();

            var productDetails = await _context.Products
                .Where(p => topSellingProducts.Select(tp => tp.ProductId).Contains(p.ProductId))
                .ToListAsync();

            var topProducts = topSellingProducts
                .Join(productDetails,
                      tp => tp.ProductId,
                      pd => pd.ProductId,
                      (tp, pd) => new { pd.ProductName, tp.TotalSold })
                .ToList();

            return View(topProducts);
        }

        public async Task<IActionResult> ProfitStatistics()
        {
            var profit = await _context.Orders
                .Select(o => new
                {
                    o.OrderDate,
                    o.TotalPrice,
                    CostPrice = o.OrderDetails.Sum(od => od.Quantity * od.Product.Price)
                })
                .GroupBy(o => new { o.OrderDate.Year, o.OrderDate.Month })
                .Select(g => new
                {
                    Year = g.Key.Year,
                    Month = g.Key.Month,
                    TotalProfit = g.Sum(o => o.TotalPrice - o.CostPrice)
                })
                .ToListAsync();

            return View(profit);
        }

    }
}
