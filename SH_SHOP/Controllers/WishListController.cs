using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
using SH_SHOP.Repositories;
using System.Security.Claims;

namespace SH_SHOP.Controllers
{
    public class WishListController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IProductRepository _productRepository;
        public WishListController(IProductRepository productRepository, ApplicationDbContext context)
        {
            _productRepository = productRepository;
            _context = context;
        }
        public IActionResult Index()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if(userId == null)
            {
                return Redirect("/Identity/Account/Login");
            }
            var likedProducts = _context.LikeProducts
                .Where(lp => lp.UserId == userId)
                .Include(lp => lp.Product).ThenInclude(p => p.Images)
                .ToList();
            return View(likedProducts);
        }
        public IActionResult AddWishList(int productId)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var existingLike = _context.LikeProducts
                .FirstOrDefault(pl => pl.ProductId == productId && pl.UserId == userId);

            if (existingLike == null)
            {
                _context.LikeProducts.Add(new LikeProduct
                {
                    ProductId = productId,
                    UserId = userId
                });
            }
            else
            {
                _context.LikeProducts.Remove(existingLike);
            }
            _context.SaveChanges();
            return RedirectToAction("Index", "WishList");
        }
        [HttpPost]
        public async Task<IActionResult> RemoveLike(string userId, int productId)
        {
            var like = await _context.LikeProducts
                .FirstOrDefaultAsync(lp => lp.UserId == userId && lp.ProductId == productId);

            if (like != null)
            {
                _context.LikeProducts.Remove(like);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction("Index");
        }

    }
}
