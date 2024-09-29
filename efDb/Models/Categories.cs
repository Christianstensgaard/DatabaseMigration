using Microsoft.EntityFrameworkCore;

namespace efDb.Models;
public class Categories{
  public int Id { get; set; }
    public string CategoryName { get; set; }
    public ICollection<Product> Products { get; set; }
}