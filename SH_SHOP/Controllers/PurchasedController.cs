using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
using SH_SHOP.ViewModels;

namespace SH_SHOP.Controllers
{
    public class PurchasedController : Controller
    {
        private readonly ApplicationDbContext _context;
        public PurchasedController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> PurchasedProducts(string userId)
        {
            var purchasedProducts = await _context.OrderDetails
                .Include(od => od.Product)
                .Include(od => od.Order)
                .Where(od => od.Order.UserId == userId)
                .Select(od => new PurchasedProductViewModel
                {
                    ProductId = od.Product.ProductId,
                    ProductName = od.Product.ProductName,
                    Price = od.Product.Price,
                    Quantity = od.Quantity,
                    OrderDate = od.Order.OrderDate
                })
                .ToListAsync();

            return View(purchasedProducts);
        }

    }
}
