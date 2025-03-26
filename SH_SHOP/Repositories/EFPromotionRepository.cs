using Microsoft.EntityFrameworkCore;
using SH_SHOP.Models;

namespace SH_SHOP.Repositories
{
    public class EFPromotionRepository : IPromotionRepository
    {
        private readonly ApplicationDbContext _context;

        public EFPromotionRepository(ApplicationDbContext context) { _context = context; }

        public async Task<IEnumerable<Promotion>> GetAllAsync()
        {
            return await _context.Promotions.ToListAsync();
        }
        public async Task<Promotion> GetByIdAsync(int promotionId)
        {
            return await _context.Promotions.FirstOrDefaultAsync(p => p.Id == promotionId);
        }
        public async Task AddAsync(Promotion promotion)
        {
            _context.Promotions.Add(promotion);
            await _context.SaveChangesAsync();
        }
        public async Task UpdateAsync(Promotion promotion)
        {
            _context.Promotions.Update(promotion);
            await _context.SaveChangesAsync();
        }
        public async Task DeleteAsync(int promotionId)
        {
            var promotion = await _context.Promotions.FindAsync(promotionId);
            _context.Promotions.Remove(promotion);
            await _context.SaveChangesAsync();
        }
    }
}
