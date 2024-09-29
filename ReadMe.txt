## Init of database
  1. Inside the databaseContext.cs the connectionstring should be filled to match the correct output
     optionsBuilder.UseSqlServer("ConnectionString");

  2.  after that, the efDb, should be reff inside the database system, followed by common entity framework
      init.


## Rollback
  Inside entity framework, rollback is made easy with the build in commands. This mean that if you want
  to rollback to before Adding catefories, you can type.
    - dotnet ef database update AddCategories

  if the need is rollback to the initial state, the following command can be used.
    - dotnet ef database update 0



## Summary of Commands:
The following commands was used under development of the database mirgration.

#Initial Migration: (initial-shema)
  - dotnet ef migrations add InitialCreate
  - dotnet ef database update

#Add Categories: (ef_categories)
 -dotnet ef migrations add AddCategories
 -dotnet ef database update

#Add Product Ratings: (ef_ratings)
  -dotnet ef migrations add AddProductRatings
  -dotnet ef database update
