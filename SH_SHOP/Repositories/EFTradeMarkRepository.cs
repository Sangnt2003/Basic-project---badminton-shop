using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public class EFTradeMarkRepository : ITradeMarkRepository
    {
        private readonly ApplicationDbContext _context;

        public EFTradeMarkRepository(ApplicationDbContext context) { _context = context; }

        public async Task<IEnumerable<TradeMark>> GetAllAsync()
        {
            return await _context.TradeMarks.ToListAsync();
        }
        public async Task<TradeMark> GetByIdAsync(int tradeMarkId)
        {
            return await _context.TradeMarks.FirstOrDefaultAsync(p => p.Id == tradeMarkId);
        }
        public async Task AddAsync(TradeMark tradeMark)
        {
            _context.TradeMarks.Add(tradeMark);
            await _context.SaveChangesAsync();
        }
        public async Task UpdateAsync(TradeMark tradeMark)
        {
            _context.TradeMarks.Update(tradeMark);
            await _context.SaveChangesAsync();
        }
        public async Task DeleteAsync(int tradeMarkId)
        {
            var tradeMark = await _context.TradeMarks.FindAsync(tradeMarkId);
            _context.TradeMarks.Remove(tradeMark);
            await _context.SaveChangesAsync();
        }
    }
}
