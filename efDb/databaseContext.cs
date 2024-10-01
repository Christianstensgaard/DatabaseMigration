using efDb.Models;
using Microsoft.EntityFrameworkCore;

namespace efDb;
public class DatabaseContext :DbContext
{
    // Db Context
    public DbSet<Product> Products {get;set;}
    public DbSet<Categories> Categories { get; set; }
    public DbSet<ProductRating> ProductRatings { get; set; }


    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
{
    var connectionString = Environment.GetEnvironmentVariable("SQLSERVER_CONNECTION_STRING");
    if (!string.IsNullOrEmpty(connectionString))
    {
        optionsBuilder.UseSqlServer(connectionString);
    }
    else
    {
        throw new InvalidOperationException("Connection string is not provided.");
    }
}

}