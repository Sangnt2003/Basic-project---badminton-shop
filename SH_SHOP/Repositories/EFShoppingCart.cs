using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public class EFShoppingCart : IShoppingCart
    {
        private readonly ApplicationDbContext _context;
        private readonly IProductRepository _productRepository;

        public EFShoppingCart(ApplicationDbContext context, IProductRepository productRepository)
        {
            _context = context;
            _productRepository = productRepository;
        }      
        public async Task<List<Product>> GetCartItemsAsync(string userId)
        {
            // Lấy các mục trong giỏ hàng của người dùng cụ thể
            var cartItems = await _context.ShoppingCarts
                .Where(item => item.UserId == userId)
                .Include(item => item.Product) // Nếu có một liên kết với bảng sản phẩm
                .ToListAsync();

            // Cập nhật giá của sản phẩm nếu PromotionId của sản phẩm trở về null
            foreach (var cartItem in cartItems)
            {
                if (cartItem.Product.PromotionId == null)
                {
                    var currentPrice = await _productRepository.GetCurrentPriceAsync(cartItem.ProductId);
                    cartItem.UnitPrice = currentPrice;
                }
            }

            // Chuyển đổi thành danh sách các sản phẩm từ các mục giỏ hàng
            var products = cartItems.Select(item => item.Product).ToList();

            return products;
        }


        public async Task UpdateCartItemQuantityAsync(string userId, int productId, int quantity)
        {
            var cartItem = await _context.ShoppingCarts
                .FirstOrDefaultAsync(c => c.UserId == userId && c.ProductId == productId);
            if (cartItem != null)
            {
                cartItem.Quantity = quantity;
                await _context.SaveChangesAsync();
            }
        }

        public async Task<int> RemoveFromCartAsync(string userId, int productId)
        {
            var cartItem = await _context.ShoppingCarts
                .FirstOrDefaultAsync(sc => sc.UserId == userId && sc.ProductId == productId);

            if (cartItem != null)
            {
                _context.ShoppingCarts.Remove(cartItem);
                return await _context.SaveChangesAsync();
            }

            return 0;
        }
    }
}
