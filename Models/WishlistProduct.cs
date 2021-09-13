namespace amazen.Models
{
    public class WishlistProduct
    {
        public int Id { get; set; }
        public int WishlistId { get; set; }
        public int ProductId { get; set; }
    }
}