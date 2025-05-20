# SQL Database Selection and Query Commands

This README explains SQL commands for database selection and retrieving data from tables.

## USE DATABASE

The `USE` command selects a specific database to work with for subsequent SQL operations.

```sql
USE my_db;
```

### Purpose
- Sets the active database context for the current session
- Directs all subsequent SQL statements to operate on the specified database
- Simplifies commands by eliminating the need to qualify object names with database names

### Syntax
```sql
USE database_name;
```

### Key Points
- The database must exist before it can be selected
- User must have appropriate privileges to access the specified database
- This command affects only the current session
- The active database remains selected until another USE statement is executed or the session ends

## SELECT Statement

The `SELECT` statement retrieves data from a database table.

```sql
SELECT * FROM customers;
```

### Purpose
- Retrieves data from one or more tables
- Forms the foundation of data querying in SQL
- Allows for filtering, sorting, and aggregation of data

### Syntax for Basic SELECT
```sql
SELECT column1, column2, ... FROM table_name;
```

### Syntax for SELECT All Columns
```sql
SELECT * FROM table_name;
```

### Components Explained
- **SELECT**: The keyword that begins the query
- **\***: A wildcard character that represents all columns in the table
- **FROM**: Specifies the table to query
- **customers**: The name of the table being queried

### Key Points
- `SELECT *` retrieves all columns from the specified table
- This is useful for exploration but not recommended for production code due to:
  - Increased network traffic and memory usage
  - Potential exposure of sensitive data
  - Coupling code to table structure
- Best practice is to explicitly name only the columns you need
- The result is called a "result set" or "recordset"
- By default, the result set has no guaranteed order unless an ORDER BY clause is used

### Advanced SELECT Features (Not Used in Example)
- WHERE clause for filtering rows
- ORDER BY for sorting results
- GROUP BY for aggregating data
- HAVING for filtering grouped results
- JOIN for combining data from multiple tables
- LIMIT/OFFSET for pagination

## Example Explained

The example contains two commands:

1. `USE my_db;` - Switches the current database context to "my_db"
2. `SELECT * FROM customers;` - Retrieves all columns and all rows from the "customers" table in the my_db database

The output would be a table containing all the data from all columns in the customers table.

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### SELECT Statement
- [MySQL Documentation: SELECT Statement](https://dev.mysql.com/doc/refman/8.0/en/select.html)
- [PostgreSQL Documentation: SELECT](https://www.postgresql.org/docs/current/sql-select.html)
- [SQL Server Documentation: SELECT](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql)
- [W3Schools: SQL SELECT Statement](https://www.w3schools.com/sql/sql_select.asp)
- [GeeksforGeeks: SQL SELECT Statement](https://www.geeksforgeeks.org/sql-select-query/)
- [TutorialsPoint: SQL SELECT Statement](https://www.tutorialspoint.com/sql/sql-select-query.htm)
- [JavaTpoint: SQL SELECT](https://www.javatpoint.com/sql-select)