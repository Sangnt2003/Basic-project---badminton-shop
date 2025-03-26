using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public interface ITradeMarkRepository
    {
        Task<IEnumerable<TradeMark>> GetAllAsync();
        Task<TradeMark> GetByIdAsync(int id);
        Task AddAsync(TradeMark tradeMark);
        Task UpdateAsync(TradeMark tradeMark);
        Task DeleteAsync(int id);
    }
}
