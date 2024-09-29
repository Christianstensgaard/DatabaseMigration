using efDb.Models;
using Microsoft.EntityFrameworkCore;

namespace efDb;
public class DatabaseContext :DbContext
{

    // Db Context
    public DbSet<Product> Products {get;set;}
    public DbSet<Categories> Categories { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("ConnectionString");
    }
}