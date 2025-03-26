namespace SH_SHOP.Models
{
    public class Evaluate
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string UserId { get; set; }
        public required string Content { get; set; }
        public int Rating { get; set; }
        public bool Edited { get; set; }     
        public DateTime ReviewDate { get; set; } = DateTime.Now;
        public Product Product { get; set; }
        public User User { get; set; }
    }
}
