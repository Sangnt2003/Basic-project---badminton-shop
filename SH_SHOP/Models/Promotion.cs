using System.ComponentModel.DataAnnotations;

namespace SH_SHOP.Models
{
    public class Promotion
    {
        public int Id {  get; set; }    
        public required string Title { get; set; }
        public decimal Discount {  get; set; }
        public int Order {  get; set; }
        public required DateTime StartDate {  get; set; }
        [Compare(nameof(StartDate), ErrorMessage = "EndDate must be greater than or equal to StartDate")]
        public required DateTime EndDate {  get; set; }
        public Promotion() { 
            StartDate = DateTime.UtcNow;
        }
    }
}
