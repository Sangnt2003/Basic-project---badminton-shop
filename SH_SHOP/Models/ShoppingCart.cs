namespace SH_SHOP.Models
{
    public class ShoppingCart
    {      
        public int ProductId { get; set; }
        public string UserId { get; set; }
        public DateTime Date { get; set; }
        public int Quantity { get; set; }
        public decimal UnitPrice {  get; set; }       
        public decimal TotalPrice => Quantity * UnitPrice;
        public string? Size { get; set; }
        public string? Color { get; set; }
        public Product? Product { get; set; }
        public User? User { get; set; }       
    }
}