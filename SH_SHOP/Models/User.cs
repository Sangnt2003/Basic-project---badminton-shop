using Microsoft.AspNetCore.Identity;

namespace SH_SHOP.Models
{
    public class User : IdentityUser
    {
        public required string FullName {  get; set; }
        public required string Address { get; set; }
        public List<ShoppingCart>? ShoppingCarts { get; set; }
        public List<Order>? Orders { get; set; }
        public ICollection<Evaluate>? Evaluations { get; set; }
    }
}
