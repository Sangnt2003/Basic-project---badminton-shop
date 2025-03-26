using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
using SH_SHOP.Repositories;

namespace SH_SHOP.Controllers
{
    public class EvaluateController : Controller
    {
        private readonly ApplicationDbContext _context;
        public EvaluateController(ApplicationDbContext context)
        {          
            _context = context;         
        }
        [HttpPost]
        public async Task<IActionResult> AddEvaluation(int productId, string userId, string content, int rating)
        {
            var orderDetail = _context.OrderDetails.Include(od => od.Order).FirstOrDefault(od => od.ProductId == productId && od.Order.UserId == userId);

            if (orderDetail == null)
            {
                TempData["ErrorMessage"] = "Bạn phải mua sản phẩm trước khi đánh giá.";
                return RedirectToAction("Detail", "Home", new { productId = productId });
            }

            if (rating == 0)
            {
                TempData["ErrorRating"] = "Bạn phải chọn ít nhất một ngôi sao";
                return RedirectToAction("Detail", "Home", new { productId = productId });
            }
            var evaluation = new Evaluate
            {
                ProductId = productId,
                UserId = userId,
                Content = content,
                Rating = rating,
                Edited = false,
                ReviewDate = DateTime.Now
            };

            _context.Evaluates.Add(evaluation);
            await _context.SaveChangesAsync();

            // Nếu đánh giá được thêm thành công, chuyển hướng người dùng đến trang chi tiết sản phẩm
            return RedirectToAction("Detail", "Home", new { productId = productId });
        }
    }
}
