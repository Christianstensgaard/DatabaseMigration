# Manual Database Migration
> **IMPORTANT**
> The goal of this part of the project is to perform manual database migrations.

# Documentation Includes
1. **Getting Started**
   - This section will help you get up and running using Docker.

2. **Documentation**
   - Contains information about the database, including added shell scripts and other details.

3. **Rollback Guide**
   - Instructions on how to roll back the different migrations.

# Getting Started
> **WARNING**
> Before starting, make sure you have the C# SDK 8.0 and Docker installed. If not, refer to the guides below:

- [Guide to C# SDK](#)
- [Getting Started with Docker](#)

## Installing Dependencies from Git
1. **Clone the Project**
   - Cloning the project is straightforward. Use the following commands:
     ```bash
     git pull

     docker build -t <name> .
     docker run -p 1346:1346
     ```

2. **Checking the Connection**
   - Before continuing, check the Docker container’s connection and initialization by following the steps in **Do something**.

3. **Using MySQL**
   - In this project, we're using *MySQL* as the database. This allows us to create an `init.sql` file that will run during the database initialization. Any changes can be made inside the **DbInit.sql** file.

4. **Using C# and MySQL**
   ```csharp
   using MySql.Data;
   using MySql.Data.MySqlClient;
   ```
  > [!INFORMATION]
  > You can set up the connection to the database using the MySqlConnection class.

  ```csharp
    MySqlConnection conn = new MySqlConnection(connStr);
  ```
  > [!NOTE]
  > The connStr is the connection string used to connect to the database. It may vary, but should look something like this:
  > ***server=localhost;user=root;database=world;port=3306;password=password***

  > [!INFORMATION]
  > For more information on getting started, check out this step-by-step guide:
  > [Getting Started with MySQL](#)


5. **Handle Rollback**
  > [!WARNING]
  > The rollback script is still under development and is for demo purposes only, so some parts of the script may not work!

  - Rollbacks can be handled easily with the included scripts.
  - If you prefer not to use the included scripts, all rollback scripts are created separately and can be used individually.