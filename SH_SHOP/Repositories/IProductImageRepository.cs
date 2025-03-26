using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public interface IProductImageRepository
    {
        Task AddAsync(ProductImage productImage);
        Task UpdateAsync(ProductImage productImage);
        Task<List<ProductImage>> GetByProductIdAsync(int productId);
        Task DeleteAsync(ProductImage image);
    }
}
