namespace efDb.Models;
public class ProductRating{
  public int Id { get; set; }
    public int ProductId { get; set; }
    public int Rating { get; set; } // Assume rating is between 1 and 5
    public Product? Product { get; set; }
}