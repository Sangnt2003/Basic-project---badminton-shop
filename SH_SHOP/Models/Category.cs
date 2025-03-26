using System.ComponentModel.DataAnnotations;

namespace SH_SHOP.Models
{
    public class Category
    {
        public int Id { get; set; }
        public required string Name { get; set; }
    }
}
