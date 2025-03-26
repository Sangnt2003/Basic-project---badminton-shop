using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
namespace SH_SHOP.Repositories
{
    public class EFProductRepository : IProductRepository
    {
        private readonly ApplicationDbContext _context;

        public EFProductRepository(ApplicationDbContext context) { _context = context; }

        public async Task<IEnumerable<Product>> GetAllAsync()
        {
            return await _context.Products.Include(p => p.Category).Include(p => p.TradeMark).Include(p => p.Promotion).Include(p => p.ProductDetails).ToListAsync();
        }
        public async Task<Product> GetByIdAsync(int productId)
        {
            return await _context.Products.Include(p => p.Category).Include(p => p.TradeMark).Include(p => p.Promotion).Include(p => p.ProductDetails).FirstOrDefaultAsync(p => p.ProductId == productId);
        }
        
        public async Task<List<ProductDetail>> GetProductDetailsAsync(int productId)
        {
            return await _context.ProductDetails.Where(pd => pd.ProductId == productId).ToListAsync();
        }
        public async Task AddAsync(Product product)
        {
            _context.Products.Add(product);
            await _context.SaveChangesAsync();          
        }
        public async Task UpdateAsync(Product product)
        {
            _context.Products.Update(product);
            await _context.SaveChangesAsync();
        }
        public async Task DeleteAsync(int productId)
        {
            var product = await _context.Products.FindAsync(productId);
            _context.Products.Remove(product);
            await _context.SaveChangesAsync();
        }
        public async Task<decimal> GetCurrentPriceAsync(int productId)
        {
            var product = await _context.Products
                .Include(p => p.Promotion)
                .FirstOrDefaultAsync(p => p.ProductId == productId);

            if (product == null)
            {
                throw new ArgumentException($"Product with ID {productId} not found.");
            }

            if (product.Promotion != null)
            {
                var discountedPrice = product.Price - (product.Price * product.Promotion.Discount / 100);
                return discountedPrice;
            }
            else
            {
                return product.Price;
            }
        }
        public async Task<IEnumerable<Product>> GetProductsByCategoryIdAsync(int categoryId)
        {
            return await _context.Products.Include(p => p.Category).Include(p => p.TradeMark).Include(p => p.ProductDetails).Where(p => p.CategoryId == categoryId).ToListAsync();
        }

        public IQueryable<Product> GetProductsByCategoryId(int categoryId)
        {
            return _context.Products.Where(p => p.CategoryId == categoryId);
        }

        public IQueryable<Product> GetAll()
        {
            return _context.Products;
        }
    }
}
