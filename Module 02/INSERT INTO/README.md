# SQL Cross-Database Insert Operation

This README explains SQL commands for database selection and inserting data from one table into another across different databases.

## USE DATABASE

The `USE` command selects a specific database to work with for subsequent SQL operations.

```sql
USE csecu;
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

## INSERT INTO SELECT (Cross-Database)

The `INSERT INTO SELECT` statement copies data from one table and inserts it into another table, potentially across different databases.

```sql
INSERT INTO my_db.customers(customerName)
SELECT studentName
FROM odhrubo;
```

### Purpose
- Inserts data into a table using the results of a SELECT statement
- Allows for efficient bulk insertion of data from one table to another
- Enables cross-database operations when fully qualified table names are used

### Syntax
```sql
INSERT INTO target_table (column1, column2, ...)
SELECT column1, column2, ...
FROM source_table
[WHERE condition];
```

### Components Explained
- **INSERT INTO my_db.customers(customerName)**: Specifies the target table and column
  - **my_db.customers**: Fully qualified table name (database.table)
  - **(customerName)**: The specific column in the target table to receive values
- **SELECT studentName**: Selects data from the specified column in the source table
- **FROM odhrubo**: Specifies the source table (in the current database context)

### Key Points for Cross-Database Operations
- The current database context is set to "csecu" via the USE statement
- The target table is qualified with its database name (my_db.customers)
- The source table (odhrubo) is assumed to be in the current database (csecu)
- The number of columns in the SELECT statement must match the number of columns in the INSERT INTO statement
- Data types between source and target columns should be compatible
- The user must have appropriate privileges on both databases
- No explicit WHERE clause means all rows from the source table will be inserted

### Practical Applications
- Migrating data between databases
- Creating backup copies of data
- Populating tables with data derived from other tables
- Synchronizing data across different databases

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### INSERT INTO SELECT
- [MySQL Documentation: INSERT INTO SELECT](https://dev.mysql.com/doc/refman/8.0/en/insert-select.html)
- [W3Schools: SQL INSERT INTO SELECT](https://www.w3schools.com/sql/sql_insert_into_select.asp)
- [GeeksforGeeks: SQL INSERT INTO SELECT](https://www.geeksforgeeks.org/sql-insert-into-select-statement/)
- [TutorialsPoint: SQL INSERT INTO SELECT](https://www.tutorialspoint.com/sql/sql-insert-into-select-statement.htm)
- [JavaTpoint: SQL INSERT INTO SELECT](https://www.javatpoint.com/sql-insert-into-select)

### Cross-Database Operations
- [MySQL Documentation: Identifier Qualifiers](https://dev.mysql.com/doc/refman/8.0/en/identifier-qualifiers.html)
- [SQL Server Documentation: Cross-Database Queries](https://learn.microsoft.com/en-us/sql/relational-databases/databases/use-cross-database-queries)
- [GeeksforGeeks: Cross-Database Queries in SQL](https://www.geeksforgeeks.org/cross-database-queries-in-sql/)