# SQL Database and Table Creation Commands

This README explains SQL commands for database selection and table creation.

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

## CREATE TABLE

The `CREATE TABLE` command creates a new table in the current database with the specified columns and data types.

```sql
CREATE TABLE customers (
    customerName VARCHAR(100),
    phoneNumber INT
);
```

### Purpose
- Creates a new, empty table with the defined structure
- Establishes a schema for storing structured data
- Defines data types for each column to ensure data integrity

### Syntax
```sql
CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
```

### Components Explained
- **CREATE TABLE customers**: Defines a new table named "customers"
- **customerName VARCHAR(100)**: Creates a column that:
  - Is named "customerName"
  - Stores variable-length character strings (VARCHAR)
  - Has a maximum length of 100 characters
- **phoneNumber INT**: Creates a column that:
  - Is named "phoneNumber"
  - Stores integer values
  - Typical range depends on the database system (usually -2,147,483,648 to 2,147,483,647)

### Key Points
- Table names must be unique within a database
- Each column must have a data type
- No primary key is defined in this table (generally not recommended for production tables)
- No constraints (NOT NULL, UNIQUE, etc.) are specified
- The table will be created empty (no data)
- VARCHAR(100) allocates space dynamically based on the actual data length
- INT columns typically use 4 bytes of storage
- The semicolon (;) terminates the SQL statement

### Best Practices
- Always include a primary key in production tables
- Consider adding NOT NULL constraints to required fields
- Use appropriate data types for efficiency:
  - VARCHAR for variable-length strings
  - CHAR for fixed-length strings
  - INT for whole numbers
  - DECIMAL for precise numeric values
  - DATE, TIME, or DATETIME for temporal data
- Add appropriate indexes for columns frequently used in WHERE clauses
- Document your table structure
- Consider using naming conventions for consistency

### Table Design Considerations for "customers"
- phoneNumber might be better as VARCHAR since:
  - Phone numbers can contain leading zeros
  - Some phone numbers may include special characters or country codes
  - Phone numbers are not used for mathematical operations
- Consider adding columns for additional customer information such as:
  - Customer ID (primary key)
  - Email address
  - Address information
  - Creation date
- Consider adding constraints:
  - NOT NULL for required fields
  - UNIQUE for fields like email addresses
  - DEFAULT values where appropriate

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### CREATE TABLE
- [MySQL Documentation: CREATE TABLE](https://dev.mysql.com/doc/refman/8.0/en/create-table.html)
- [PostgreSQL Documentation: CREATE TABLE](https://www.postgresql.org/docs/current/sql-createtable.html)
- [SQL Server Documentation: CREATE TABLE](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql)
- [W3Schools: SQL CREATE TABLE](https://www.w3schools.com/sql/sql_create_table.asp)
- [GeeksforGeeks: SQL CREATE TABLE](https://www.geeksforgeeks.org/sql-create-table/)
- [TutorialsPoint: SQL CREATE TABLE](https://www.tutorialspoint.com/sql/sql-create-table.htm)
- [JavaTpoint: SQL CREATE TABLE](https://www.javatpoint.com/sql-create-table)

### Data Types
- [MySQL Data Types](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)
- [PostgreSQL Data Types](https://www.postgresql.org/docs/current/datatype.html)
- [SQL Server Data Types](https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql)
- [W3Schools: SQL Data Types](https://www.w3schools.com/sql/sql_datatypes.asp)