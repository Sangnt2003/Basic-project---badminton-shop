using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Help;
using SH_SHOP.Models;
using SH_SHOP.Repositories;
using System.Diagnostics;
using System.Drawing.Printing;
using System.Security.Claims;

namespace SH_SHOP.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IProductRepository _productRepository;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<User> _userManager;
        public HomeController(ILogger<HomeController> logger, IProductRepository productRepository, ApplicationDbContext context, UserManager<User> userManager)
        {
            _logger = logger;
            _productRepository = productRepository;
            _context = context;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Introduce()
        {
            return View();
        }
        public async Task<IActionResult> ProductList(int? categoryId, int pageNumber = 1, int pageSize = 6)
        {
            IEnumerable<Product> products = categoryId.HasValue
                ? await _productRepository.GetProductsByCategoryIdAsync(categoryId.Value)
                : await _productRepository.GetAllAsync();

            var paginatedProducts = products.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToList();

            var productIds = paginatedProducts.Select(p => p.ProductId).ToList();
            var productImages = await _context.ProductImages.Where(pi => productIds.Contains(pi.ProductId)).ToListAsync();
            var promotions = await _context.Promotions.ToListAsync();

            foreach (var product in paginatedProducts)
            {
                product.Images = productImages.Where(pi => pi.ProductId == product.ProductId).ToList();
                product.Promotion = promotions.FirstOrDefault(promo => promo.Id == product.PromotionId);
                if (product.Promotion != null && DateTime.Now > product.Promotion.EndDate)
                {
                    product.PromotionId = null;
                    await _context.SaveChangesAsync();
                }
            }
            ViewBag.PageNumber = pageNumber;
            ViewBag.TotalPages = (int)Math.Ceiling(products.Count() / (decimal)pageSize);
            ViewBag.CategoryId = categoryId;
            return View(paginatedProducts);
        }

        public async Task<IActionResult> Sort(string sortBy, int categoryId, int pageNumber)
        {
            int pageSize = 6;

            IEnumerable<Product> products = HttpContext.Session.GetObjectFromJson<IEnumerable<Product>>("ProductFilter");
            if (products == null)
            {
                products = await _productRepository.GetProductsByCategoryIdAsync(categoryId);
            }
            switch (sortBy)
            {
                case "PriceDesc":
                    products = products.OrderByDescending(p => p.Price);
                    break;
                case "PriceAsc":
                    products = products.OrderBy(p => p.Price);
                    break;
                case "NameAsc":
                    products = products.OrderBy(p => p.ProductName);
                    break;
                case "NameDesc":
                    products = products.OrderByDescending(p => p.ProductName);
                    break;
                default:
                    break;
            }
            HttpContext.Session.SetObjectAsJson("ProductFilter", products);

            // Paginate the sorted products
            var paginatedProducts = products.Skip((pageNumber - 1) * pageSize).Take(pageSize);

            foreach (var product in paginatedProducts)
            {
                product.Images = await _context.ProductImages
                    .Where(pi => pi.ProductId == product.ProductId)
                    .ToListAsync();
            }

            ViewBag.CategoryId = categoryId;
            ViewBag.PageNumber = pageNumber;
            ViewBag.TotalPages = (int)Math.Ceiling(products.Count() /(decimal)pageSize);

            return View("ProductList", paginatedProducts);
        }

        public async Task<IActionResult> FilterProducts(string[] priceRange, int? categoryId, string[] trademark, string[] size, int pageNumber = 1)
        {
            int pageSize = 6;

            IEnumerable<Product> allProducts = await _productRepository.GetProductsByCategoryIdAsync(categoryId ?? 0);
            IEnumerable<Product> filteredProducts = allProducts;
            List<string> appliedFilters = new List<string>();

            if (priceRange != null && priceRange.Length > 0)
            {
                filteredProducts = filteredProducts.Where(p =>
                    priceRange.Any(range =>
                    {
                        switch (range)
                        {
                            case "under500k":
                                return p.Price < 500000;
                            case "500k-1m":
                                return p.Price >= 500000 && p.Price < 1000000;
                            case "1m-2m":
                                return p.Price >= 1000000 && p.Price < 2000000;
                            case "2m-3m":
                                return p.Price >= 2000000 && p.Price < 3000000;
                            case "over3m":
                                return p.Price > 3000000;
                            default:
                                return false;
                        }
                    }));
                appliedFilters.AddRange(priceRange);
            }

            if (trademark != null && trademark.Length > 0)
            {
                filteredProducts = filteredProducts.Where(p =>
                    trademark.Any(tm =>
                    {
                        switch (tm)
                        {
                            case "Lining":
                                return p.TradeMark.Name == "Lining";
                            case "Yonex":
                                return p.TradeMark.Name == "Yonex";
                            case "Mizuno":
                                return p.TradeMark.Name == "Mizuno";
                            case "Victor":
                                return p.TradeMark.Name == "Victor";
                            default:
                                return false;
                        }
                    }));
                appliedFilters.AddRange(trademark);
            }

            if (size != null && size.Length > 0)
            {
                filteredProducts = filteredProducts.Where(p =>
                    size.Any(s =>
                    {
                        switch (s)
                        {
                            case "3U":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "3U");
                            case "4U":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "4U");
                            case "5U":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "5U");
                            case "38":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "38");
                            case "39":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "39");
                            case "40":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "40");
                            case "41":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "41");
                            case "42":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "42");
                            case "43":
                                return p.ProductDetails.Any(pd => pd.Size.Name == "43");
                            default:
                                return false;
                        }
                    }));
                appliedFilters.AddRange(size);
            }

            if (!filteredProducts.Any())
            {
                filteredProducts = allProducts;
            }
            var paginatedProducts = filteredProducts.Skip((pageNumber - 1) * pageSize).Take(pageSize);

            HttpContext.Session.SetObjectAsJson("AppliedFilters", appliedFilters);
            ViewData["AppliedFilters"] = appliedFilters;

            foreach (var product in paginatedProducts)
            {
                product.Images = await _context.ProductImages
                    .Where(pi => pi.ProductId == product.ProductId)
                    .ToListAsync();
            }

            HttpContext.Session.SetObjectAsJson("ProductFilter", filteredProducts);

            ViewBag.CategoryId = categoryId;
            ViewBag.PageNumber = pageNumber;
            ViewBag.TotalPages = (int)Math.Ceiling(filteredProducts.Count() / (decimal)pageSize);

            return View("ProductList", paginatedProducts);
        }

        public async Task<IActionResult> Search(string searchTerm)
        {
            ViewBag.SearchType = searchTerm;
            IEnumerable<Product> products = await _productRepository.GetAllAsync();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                searchTerm = searchTerm.ToLower();
                products = products.Where(p =>
                    p.ProductName.ToLower().Contains(searchTerm) ||
                    (p.Category != null && (p.Category.Name.ToLower().Contains(searchTerm) || p.CategoryId.ToString() == searchTerm)) ||
                    (p.TradeMark != null && (p.TradeMark.Name.ToLower().Contains(searchTerm) || p.TradeMarkId.ToString() == searchTerm)) ||
                    p.Description.ToLower().Contains(searchTerm)
                );
            }

            HttpContext.Session.SetObjectAsJson("AllProducts", products);

            foreach (var product in products)
            {
                product.Images = await _context.ProductImages
                    .Where(pi => pi.ProductId == product.ProductId)
                    .ToListAsync();
            }
            return View("Search", products);
        }

        public async Task<IActionResult> Detail(int productId, string searchTerm)
        {
            var productDetail = await _context.Products
                .Include(p => p.Images)
                .Include(p => p.Category).Include(p => p.Evaluations).Include(p => p.TradeMark).Include(p => p.Promotion)
                .FirstOrDefaultAsync(p => p.ProductId == productId);

            if (productDetail == null)
            {
                return NotFound();
            }
            ViewBag.SearchType = searchTerm;
            return View(productDetail);
        }
        



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }      
    }
}
