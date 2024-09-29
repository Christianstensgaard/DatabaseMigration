namespace efDb.Models;
public class ProductRating{
  public int Id { get; set; }
    public int ProductId { get; set; }
    public short Rating { get; set; }
    public Product? Product { get; set; }
}