﻿namespace SH_SHOP.Models
{
    public class ProductImage
    {
        public int Id {  get; set; }     
        public int ProductId {  get; set; }
        public required string Url {  get; set; }
        public Product? Product { get; set; }
    }
}
