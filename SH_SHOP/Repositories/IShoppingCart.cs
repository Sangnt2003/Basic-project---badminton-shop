using Microsoft.AspNetCore.Mvc;
using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public interface IShoppingCart
    {
        Task<List<Product>> GetCartItemsAsync(string userId);
        Task UpdateCartItemQuantityAsync(string userId, int productId, int quantity);
        Task<int> RemoveFromCartAsync(string userId, int productId);
    }
}
