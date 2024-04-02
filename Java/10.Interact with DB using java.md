JDBC (Java Database Connectivity) is a Java API that enables Java applications to interact with databases. It provides a standard interface for accessing relational databases, executing SQL queries, and handling result sets. Here's an explanation with examples for connecting Java applications to databases using JDBC:

1. **Database Connectivity**:

   - **Loading JDBC Driver**: First, you need to load the JDBC driver for the database you want to connect to. The driver should be included in your application's classpath.

   ```java
   Class.forName("com.mysql.cj.jdbc.Driver");
   ```

   - **Establishing Connection**: After loading the driver, you can establish a connection to the database using the `DriverManager` class and providing the database URL, username, and password.

   ```java
   String url = "jdbc:mysql://localhost:3306/mydatabase";
   String username = "username";
   String password = "password";
   Connection connection = DriverManager.getConnection(url, username, password);
   ```

2. **Executing SQL Queries**:

   - **Creating Statement**: Once the connection is established, you can create a `Statement` object to execute SQL queries.

   ```java
   Statement statement = connection.createStatement();
   ```

   - **Executing Query**: Use the `executeQuery()` method to execute a SELECT query that returns a result set.

   ```java
   ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
   ```

   - **Executing Update**: Use the `executeUpdate()` method to execute INSERT, UPDATE, or DELETE queries that modify data in the database.

   ```java
   int rowsAffected = statement.executeUpdate("INSERT INTO users (name, age) VALUES ('John', 30)");
   ```

3. **Handling Result Sets**:

   - **Iterating Result Set**: Use methods like `next()` to iterate over the result set and retrieve data from each row.

   ```java
   while (resultSet.next()) {
       String name = resultSet.getString("name");
       int age = resultSet.getInt("age");
       System.out.println("Name: " + name + ", Age: " + age);
   }
   ```

   - **Closing Resources**: After executing the query and processing the result set, it's important to close the statement, result set, and connection to release resources.

   ```java
   resultSet.close();
   statement.close();
   connection.close();
   ```

4. **Example**:

   ```java
   import java.sql.*;

   public class JDBCExample {
       public static void main(String[] args) {
           try {
               // Load JDBC driver
               Class.forName("com.mysql.cj.jdbc.Driver");

               // Establish connection
               String url = "jdbc:mysql://localhost:3306/mydatabase";
               String username = "username";
               String password = "password";
               Connection connection = DriverManager.getConnection(url, username, password);

               // Create statement
               Statement statement = connection.createStatement();

               // Execute query
               ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

               // Process result set
               while (resultSet.next()) {
                   String name = resultSet.getString("name");
                   int age = resultSet.getInt("age");
                   System.out.println("Name: " + name + ", Age: " + age);
               }

               // Close resources
               resultSet.close();
               statement.close();
               connection.close();
           } catch (ClassNotFoundException | SQLException e) {
               e.printStackTrace();
           }
       }
   }
   ```

In this example, we connect to a MySQL database, execute a SELECT query to retrieve data from the "users" table, and then process the result set to print the names and ages of users. Finally, we close the resources to release database connections.
