using System.ComponentModel.DataAnnotations;

namespace SH_SHOP.Models
{
    public class LikeProduct
    {
        public int ProductId { get; set; }
        public string UserId { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public Product Product { get; set; }
        public User User { get; set; }
        
    }
}
