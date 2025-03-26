using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;
using System.Threading.Tasks;

namespace SH_SHOP.Repositories
{
    public interface IProductRepository
    {
        Task<IEnumerable<Product>> GetAllAsync();
        Task<Product> GetByIdAsync(int id);
        Task AddAsync(Product product);
        Task UpdateAsync(Product product);
        Task DeleteAsync(int id);
        Task<IEnumerable<Product>> GetProductsByCategoryIdAsync(int categoryId);
        Task<decimal> GetCurrentPriceAsync(int productId);
        Task<List<ProductDetail>> GetProductDetailsAsync(int productId);
        IQueryable<Product> GetProductsByCategoryId(int categoryId);
        IQueryable<Product> GetAll();
    }
}
