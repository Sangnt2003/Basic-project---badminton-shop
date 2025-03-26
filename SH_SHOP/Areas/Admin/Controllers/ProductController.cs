using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
using SH_SHOP.Repositories;

namespace SH_SHOP.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "SuperAdmin,Admin,Manager")]
    public class ProductController : Controller
    {
        private readonly IProductRepository _productRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly ITradeMarkRepository _tradeMarkRepository;
        private readonly IPromotionRepository _promotionRepository;
        private readonly IProductImageRepository _productImageRepository;
        private readonly ApplicationDbContext _context;
        public ProductController(IProductRepository productRepository, ICategoryRepository categoryRepository, IProductImageRepository productImageRepository, ITradeMarkRepository tradeMarkRepository, IPromotionRepository promotionRepository, ApplicationDbContext context)
        {
            _productRepository = productRepository;
            _categoryRepository = categoryRepository;
            _productImageRepository = productImageRepository;
            _tradeMarkRepository = tradeMarkRepository;
            _promotionRepository = promotionRepository;
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var products = await _productRepository.GetAllAsync();
            foreach (var product in products)
            {
                product.Images = await _context.ProductImages
                    .Where(pi => pi.ProductId == product.ProductId)
                    .ToListAsync();
            }
            return View(products);
        }
        public async Task<IActionResult> Detail(int id)
        {
            var product = await _productRepository.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            product.Images = await _context.ProductImages.Where(pi => pi.ProductId == product.ProductId)
                    .ToListAsync();
            return View(product);
        }

        // GET: Product/Create  -- Hien thi form them san pham moi
        [HttpGet]
        public async Task<IActionResult> Add()
        {
            var categories = await _categoryRepository.GetAllAsync();
            ViewBag.Categories = new SelectList(categories, "Id", "Name");
            var trademarks = await _tradeMarkRepository.GetAllAsync();
            ViewBag.TradeMarks = new SelectList(trademarks, "Id", "Name");
            var promotions = await _promotionRepository.GetAllAsync();
            var filteredPromotions = promotions.Where(p => p.EndDate > DateTime.Now).ToList();
            ViewBag.Promotions = new SelectList(filteredPromotions, "Id", "Title");
            return View();
        }
        
        [HttpPost]
        public async Task<IActionResult> Add(Product product, List<IFormFile> imageUrls)
        {
            if (ModelState.IsValid)
            {
                _context.Products.Add(product);
                await _context.SaveChangesAsync();

                // Lưu các hình ảnh nếu có
                if (imageUrls != null && imageUrls.Count > 0)
                {
                    foreach (var imageUrl in imageUrls)
                    {
                        var imageUrlString = await SaveImage(imageUrl);
                        var productImage = new ProductImage { Url = imageUrlString, ProductId = product.ProductId };
                        _context.ProductImages.Add(productImage);
                    }
                    await _context.SaveChangesAsync();
                }

                return RedirectToAction(nameof(Index));
            }
            // Nếu ModelState không hợp lệ, quay lại view với dữ liệu và model errors
            return View(product);
        }
        public ActionResult AddProductDetail(int productId)
        {
            ViewBag.ProductId = productId;
            return View();
        }
        [HttpPost]
        public ActionResult AddToProductDetail(int productId, int sizeId, int color, int quantity)
        {
            var existingProductDetail = _context.ProductDetails
                .FirstOrDefault(p => p.ProductId == productId && p.SizeId == sizeId && p.ColorId == color);

            if (existingProductDetail != null)
            {
                existingProductDetail.Quantity += quantity;
            }
            else
            {
                var productDetail = new ProductDetail
                {
                    ProductId = productId,
                    SizeId = sizeId,
                    ColorId = color,
                    Quantity = quantity
                };

                _context.ProductDetails.Add(productDetail);
            }
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult UpdateProductDetail(int id, int sizeId, int colorId, int quantity)
        {
            var productDetail = _context.ProductDetails.Find(id);
            if (productDetail == null)
            {
                return NotFound();
            }

            productDetail.SizeId = sizeId;
            productDetail.ColorId = colorId;
            productDetail.Quantity = quantity;

            _context.SaveChanges();
            return RedirectToAction("Index");
        }
   
        public ActionResult RemoveProductDetail(int id)
        {
            var productDetail = _context.ProductDetails.FirstOrDefault(p => p.ProductId == id);
            if (productDetail == null)
            {
                return NotFound();
            }
            // Xóa ProductDetail khỏi cơ sở dữ liệu
            _context.ProductDetails.Remove(productDetail);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        private async Task<string> SaveImage(IFormFile image)
        {
            var uniqueFileName = Guid.NewGuid().ToString() + Path.GetExtension(image.FileName);
            var savePath = Path.Combine("wwwroot/images/Product", uniqueFileName);

            while (System.IO.File.Exists(savePath))
            {
                uniqueFileName = Guid.NewGuid().ToString() + Path.GetExtension(image.FileName);
                savePath = Path.Combine("wwwroot/images/Product", uniqueFileName);
            }

            using (var fileStream = new FileStream(savePath, FileMode.Create))
            {
                await image.CopyToAsync(fileStream);
            }
            return uniqueFileName;
        }

        public async Task<IActionResult> Update(int id)
        {
            var product = await _productRepository.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            var existingImages = await _productImageRepository.GetByProductIdAsync(product.ProductId);
            ViewBag.ExistingImages = existingImages;
            var categories = await _categoryRepository.GetAllAsync();
            ViewBag.Categories = new SelectList(categories, "Id", "Name", product.CategoryId);
            var trademarks = await _tradeMarkRepository.GetAllAsync();
            ViewBag.TradeMarks = new SelectList(trademarks, "Id", "Name", product.TradeMarkId);
            var promotions = await _promotionRepository.GetAllAsync();
            ViewBag.Promotions = new SelectList(promotions, "Id", "Title", product.PromotionId);
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Update(int id, [Bind("ProductId,ProductName,Price,Description,Gender,CategoryId,TradeMarkId, PromotionId")] Product product, List<IFormFile> imageUrl)
        {
            /*ModelState.Remove("Images");*/
            if (id != product.ProductId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                var existingProduct = await _productRepository.GetByIdAsync(id);

                if (existingProduct == null)
                {
                    return NotFound();
                }

                if (imageUrl != null && imageUrl.Count > 0)
                {
                    try
                    {
                        var existingImages = await _productImageRepository.GetByProductIdAsync(existingProduct.ProductId);
                        foreach (var image in existingImages)
                        {
                            await _productImageRepository.DeleteAsync(image);
                        }
                        if (imageUrl != null && imageUrl.Count > 0)
                        {
                            foreach (var image in imageUrl)
                            {
                                var imageUrlString = await SaveImage(image);
                                var productImage = new ProductImage
                                {
                                    Url = imageUrlString,
                                    ProductId = product.ProductId
                                };
                                await _productImageRepository.UpdateAsync(productImage);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ModelState.AddModelError("ImageUrl", ex.Message);
                        return View(product);
                    }
                }

                existingProduct.ProductName = product.ProductName;
                existingProduct.Price = product.DiscountedPrice;
                existingProduct.Description = product.Description;
                existingProduct.Gender = product.Gender;
                existingProduct.CategoryId = product.CategoryId;
                existingProduct.TradeMarkId = product.TradeMarkId;
                existingProduct.PromotionId = product.PromotionId;
                await _productRepository.UpdateAsync(existingProduct);
                return RedirectToAction(nameof(Index));
            }

            var categories = await _categoryRepository.GetAllAsync();
            ViewBag.Categories = new SelectList(categories, "Id", "Name");
            var trademarks = await _tradeMarkRepository.GetAllAsync();
            ViewBag.TradeMarks = new SelectList(trademarks, "Id", "Name");
            var promotions = await _promotionRepository.GetAllAsync();
            ViewBag.Promotions = new SelectList(promotions, "Id", "Title");
            return View(product);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var product = await _productRepository.GetByIdAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            product.Images = await _context.ProductImages
                   .Where(pi => pi.ProductId == product.ProductId)
                   .ToListAsync();
            return View(product);
        }

        [HttpPost, ActionName("Delete")]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            await _productRepository.DeleteAsync(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
