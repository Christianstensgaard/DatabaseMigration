using System.ComponentModel.DataAnnotations;

namespace efDb.Models;
public class Product{
  public int Id { get; set; }

  [MaxLength(86)]
  public string Name { get; set; } = string.Empty;
  public decimal Price { get; set; }
  public int CategoryId { get; set; }
  public Categories? Category { get; set; }
}