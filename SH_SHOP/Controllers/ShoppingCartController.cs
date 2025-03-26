using Microsoft.AspNetCore.Cors.Infrastructure;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Help;
using SH_SHOP.Models;
using SH_SHOP.Repositories;
using SH_SHOP.VNPay;
using System.Drawing;
namespace SH_SHOP.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly IShoppingCart _shoppingCart;
        private readonly ApplicationDbContext _context;
        private readonly IProductImageRepository _productImageRepository;
        private readonly UserManager<User> _userManager;
        private readonly IVnPayService _vnPayService;
        public ShoppingCartController(IShoppingCart shoppingCart, UserManager<User> userManager, ApplicationDbContext context, IProductImageRepository productImageRepository, IVnPayService vnPayService)
        {
            _shoppingCart = shoppingCart;
            _userManager = userManager;
            _context = context;
            _productImageRepository = productImageRepository;
            _vnPayService = vnPayService;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return Redirect("/Identity/Account/Login");
            }

            var cartItems = await _shoppingCart.GetCartItemsAsync(user.Id);

            // Load additional data such as product images
            foreach (var item in cartItems)
            {
                // Load product image information for each item in the cart
                item.Images = await _productImageRepository.GetByProductIdAsync(item.ProductId);
            }
            return View(cartItems);
        }
        [HttpPost]
        public async Task<IActionResult> AddToCartAsync(string userId, int productId, int quantity, int categoryId, int sizeId, int colorId)
        {
            var user = _context.Users.FirstOrDefault(u => u.Id == userId);
            var product = _context.Products.Include(p => p.Promotion).FirstOrDefault(p => p.ProductId == productId);
            var productDetail = _context.ProductDetails.FirstOrDefault(pd => pd.ProductId == productId && pd.SizeId == sizeId && pd.ColorId == colorId);

            if (user != null && product != null && productDetail != null)
            {
                if (productDetail.Quantity >= quantity)
                {
                    var existingCartItem = await _context.ShoppingCarts.FirstOrDefaultAsync(c => c.UserId == userId && c.ProductId == productId && (c.Size == size || (c.Size == null && size == null)) && (c.Color == color || (c.Color == null && color == null)));
                    if (existingCartItem != null)
                    {
                        // Nếu sản phẩm đã tồn tại, chỉ cập nhật số lượng
                        existingCartItem.Quantity += quantity;
                    }
                    else
                    {
                        var cartItem = new ShoppingCart
                        {
                            UserId = userId,
                            ProductId = productId,
                            Quantity = quantity,
                            UnitPrice = product.DiscountedPrice,
                            Size = size,
                            Color = color,
                        };
                        _context.ShoppingCarts.Add(cartItem);
                    }
                    _context.SaveChanges();
                    return RedirectToAction("ProductList", "Home", new { categoryId = categoryId });
                }
                else
                {
                    TempData["ErrorMessage"] = "Số lượng sản phẩm không đủ.";
                    return RedirectToAction("ProductDetail", "Home", new { productId = productId });
                }
            }
            else
            {
                return Redirect("/Identity/Account/Login");
            }
        }

        public async Task<IActionResult> CheckoutAsync()
        {
            var user = await _userManager.GetUserAsync(User);
            var cartItems = await _context.ShoppingCarts
                                          .Where(cart => cart.UserId == user.Id)
                                          .ToListAsync();
            var toTalPrice = cartItems.Sum(i => i.Quantity * i.UnitPrice);
            TempData["TotalPrice"] = toTalPrice;
            return View(new Order());
        }
        [HttpPost]
        public async Task<IActionResult> Checkout(Order order, string payment = "COD")
        {
            // Lưu thông tin đơn hàng vào session
            HttpContext.Session.SetObjectAsJson("Order", order);

            // Lấy thông tin người dùng hiện tại
            var user = await _userManager.GetUserAsync(User);

            // Lấy danh sách các mặt hàng trong giỏ hàng của người dùng
            var cartItems = await _context.ShoppingCarts
                                          .Where(cart => cart.UserId == user.Id)
                                          .ToListAsync();

            // Xử lý thanh toán qua VnPay
            if (payment == "Thanh Toán VnPay")
            {
                var totalAmount = cartItems.Sum(item => item.Quantity * item.UnitPrice);
                var vnPayModel = new VnPaymentRequestModel
                {
                    Amount = totalAmount,
                    CreatedDate = DateTime.Now,
                    Description = "Thanh Toán đơn hàng",
                    FullName = user.FullName,
                    OrderId = new Random().Next(1000, 10000)
                };
                return Redirect(_vnPayService.CreatePaymentUrl(HttpContext, vnPayModel));
            }

            // Kiểm tra giỏ hàng có rỗng không
            if (cartItems == null || !cartItems.Any())
            {
                return RedirectToAction("Index");
            }

            // Thiết lập thông tin đơn hàng
            order.UserId = user.Id;
            order.OrderDate = DateTime.UtcNow;

            // Tính tổng giá trị đơn hàng
            order.TotalPrice = cartItems.Sum(item => item.Quantity * item.UnitPrice);

            // Thêm đơn hàng vào cơ sở dữ liệu
            _context.Orders.Add(order);
            await _context.SaveChangesAsync();

            // Lấy OrderId đã được tạo
            var orderId = order.Id;

            // Tạo danh sách chi tiết đơn hàng với OrderId đã tạo
            var orderDetails = cartItems.Select(item => new OrderDetail
            {
                OrderId = orderId, // Gán OrderId từ đơn hàng đã lưu
                ProductId = item.ProductId,
                Quantity = item.Quantity,
                Price = item.UnitPrice,
                Size = item.Size,  // Thêm trường Size
                Color = item.Color // Thêm trường Color
            }).ToList();

            _context.OrderDetails.AddRange(orderDetails);
            await _context.SaveChangesAsync();

            // Cập nhật số lượng sản phẩm trong ProductDetail
            foreach (var item in cartItems)
            {
                var productDetail = await _context.ProductDetails
                                                  .FirstOrDefaultAsync(pd => pd.ProductId == item.ProductId &&
                                                                             pd.Size == item.Size &&   // Kiểm tra Size
                                                                             pd.Color == item.Color);  // Kiểm tra Color
                if (productDetail != null)
                {
                    productDetail.Quantity -= item.Quantity;
                }
            }

            await _context.SaveChangesAsync();

            // Xóa các mặt hàng trong giỏ hàng của người dùng
            _context.ShoppingCarts.RemoveRange(cartItems);
            await _context.SaveChangesAsync();

            // Hiển thị trang hoàn tất đơn hàng
            return View("OrderCompleted", orderId);
        }




        [HttpPost]
        public async Task<IActionResult> UpdateCartItemQuantity(string userId, int productId, int quantity)
        {
            
            await _shoppingCart.UpdateCartItemQuantityAsync(userId, productId, quantity);
            // Set ViewBag to indicate updated quantity
            ViewBag.QuantityUpdatedProductId = productId;
            ViewBag.NewQuantity = quantity;
            return RedirectToAction("Index"); // Redirect to shopping cart index or wherever appropriate
        }

        [HttpPost]
        public async Task<IActionResult> RemoveItem(string userId, int productId)
        {
            await _shoppingCart.RemoveFromCartAsync(userId, productId);
            return RedirectToAction("Index");
        }
        public IActionResult PaymentSuccess()
        {
            return View("Success");
        }
        public IActionResult PaymentFail()
        {
            return View("Fail");
        }
        public async Task<IActionResult> PaymentCallBack()
        {
            var response = _vnPayService.PaymentExecute(Request.Query);
            if (response == null || response.VnPayResponseCode != "00")
            {
                TempData["Message"] = $"Lỗi thanh toán VnPay : {response.VnPayResponseCode}";
                return RedirectToAction("PaymentFail");
            }
            Order order = HttpContext.Session.GetObjectFromJson<Order>("Order");
            var user = await _userManager.GetUserAsync(User);
            var cart = await _context.ShoppingCarts
                                           .Where(cart => cart.UserId == user.Id)
                                           .ToListAsync();
            if (cart == null || !cart.Any())
            {
                return RedirectToAction("Index");
            }

            order.UserId = user.Id;
            order.OrderDate = DateTime.UtcNow;
            order.TotalPrice = cart.Sum(i => i.UnitPrice * i.Quantity);
            order.OrderDetails = cart.Select(i => new OrderDetail
            {
                ProductId = i.ProductId,
                Quantity = i.Quantity,
                Price = i.UnitPrice,
            }).ToList();
            _context.Orders.Add(order);
            await _context.SaveChangesAsync();
            HttpContext.Session.Remove("Cart");

            TempData["Message"] = $"Thanh toán VnPay thành công";
            return RedirectToAction("PaymentSuccess");
        }
    }
}
