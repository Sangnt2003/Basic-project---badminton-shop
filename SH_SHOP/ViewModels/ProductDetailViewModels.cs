using SH_SHOP.Models;

namespace SH_SHOP.ViewModels
{
  
    public class ProductDetailViewModels
    {
        public Product Product { get; set; }
        public int ProductId { get; set; }
        public string Content { get; set; }
        public int Rating { get; set; }
    }

}
