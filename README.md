# Getting Started with Entity Framework (EF)
## Prerequisites
Before you begin, ensure you have the following installed:

- .NET SDK (version 5.0 or higher)
- Visual Studio or VS Code
- SQL Server or any supported database provider (e.g., MySQL, PostgreSQL)

1. **Install Entity Framework Core**
First, install the EF Core package in your project using the NuGet Package Manager or via the terminal.

For example, if you're using SQL Server:
``` bash
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
```

For MySQL, use:
```bash
dotnet add package Pomelo.EntityFrameworkCore.MySql
```

For PostgreSQL, use:
```bash
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
```


2. **Run Migrations**
EF Core migrations allow you to create and update your database schema based on your models. To create the initial migration, run:

```` bash
dotnet ef migrations add InitialCreate
````
This will create a new migration file that defines the database schema.

Next, apply the migration to the database using the following command:

````bash
dotnet ef database update
````


> [!NOTE]
> This project is created as a library to make the setup easier for the user.


# Import the project.
## Including the project
-	First, how you include it in the project depends on how you have set up the project, but generally you can add it by clicking the project and adding a reference to the library, else you can find the build .dll file to include in the project.
## Using the library
>[!NOTE]
>Change the connection string inside the docker-compose file.

The project consists of three models that have the blueprint for the data table. And they can be used to create or get data from the database.
Inside the databaseContext.cs you will find the database context that can be used to
read and write to the database.

From here you will have full access to all the database tables and functions using entity framework.

# handling rollback
## How Rollbacks Work in EF Core
Each migration in EF Core is responsible for updating the database schema. EF Core allows you to roll back to a specific migration or revert all migrations. When you roll back, EF Core applies the necessary changes to reverse the migration (or series of migrations) and restore the previous state.

# Rollback to a Previous Migration
> [!TIP]
> Rolling back in EF Core is as simple as running a command to update the database to a previous migration. This feature allows you to manage and revert schema changes effectively while ensuring that your database schema stays in sync with your application's needs.
You can roll back the database to any previous migration by specifying the migration name. For example, if you want to roll back to a migration called InitialCreate, use the following command:

```` bash
dotnet ef database update InitialCreate
````

This command will revert any migrations applied after InitialCreate and update the database to the state it was in at that point.

Alternatively, if you just want to revert the latest migration without knowing the name of the previous migration, you can first check the migration history and then use the dotnet ef migrations remove command (but this is used more during development and not for actual rollbacks in production).

````bash
dotnet ef migrations remove
````

