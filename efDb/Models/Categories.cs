using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace efDb.Models;
public class Categories{
  public int Id { get; set; }
    [MaxLength(86)]
    public string CategoryName { get; set; } = string.Empty;
    public ICollection<Product> Products { get; set; }
}