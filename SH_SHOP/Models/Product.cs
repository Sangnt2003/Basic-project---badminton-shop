using System.ComponentModel.DataAnnotations;

namespace SH_SHOP.Models
{
    public class Product
    {
        public int ProductId {  get; set; }
        public required string ProductName { get; set; }
        public decimal Price { get; set; }
        public decimal DiscountedPrice
        {
            get
            {
                if (Promotion != null)
                {
                    return Price * (1 - Promotion.Discount / 100);
                }
                else
                {
                    return Price;
                }
            }
        }
        public string? Description { get; set; }
        public string? Gender {  get; set; }
        public List<ProductImage>? Images { get; set; }
        public int CategoryId {  get; set; }
        public int TradeMarkId {  get; set; }
        public int? PromotionId {  get; set; }
        public Category? Category { get; set; }
        public TradeMark? TradeMark { get; set; }     
        public Promotion? Promotion { get; set; }
        public List<ShoppingCart>? ShoppingCarts { get; set; }
        public List<ProductDetail>? ProductDetails { get; set; }
        public ICollection<Evaluate>? Evaluations { get; set; }
    }
}
