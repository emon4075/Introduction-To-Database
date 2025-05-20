# SQL Database and Table Operations

This README explains fundamental SQL commands for database selection, table creation, table modification, and data insertion.

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

## CREATE TABLE

The `CREATE TABLE` command creates a new table in the current database with the specified columns and data types.

```sql
CREATE TABLE Odhrubo (
    studentName VARCHAR(100),
    studentID INT,
    DOB DATE
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

### Key Points
- Table names must be unique within a database
- Each column must have a data type
- Optional constraints can be added to enforce data rules
- Common data types include:
  - VARCHAR: Variable-length character string
  - INT: Integer values
  - DATE: Date values (YYYY-MM-DD)
  - DECIMAL: Fixed-point numbers with specified precision and scale

## ALTER TABLE ADD

The `ALTER TABLE ADD` command adds new columns to an existing table.

```sql
ALTER TABLE Odhrubo
ADD (CG DECIMAL(3, 2));
```

### Purpose
- Adds one or more new columns to an existing table
- Expands the table schema to accommodate additional data attributes
- Allows for the evolution of database design as requirements change

### Syntax
```sql
ALTER TABLE table_name
ADD [COLUMN] column_name data_type [constraints];
```
or for multiple columns:
```sql
ALTER TABLE table_name
ADD (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
```

### Key Points
- New columns are initially filled with NULL values (unless a DEFAULT value is specified)
- Adding columns does not affect existing data
- DECIMAL(3,2) means a number with 3 total digits, 2 of which are after the decimal point (e.g., 3.58)
- The operation may take longer for tables with large amounts of data

## INSERT INTO (Single Row)

The `INSERT INTO` command adds a new row of data to a table.

```sql
INSERT INTO Odhrubo (studentID, studentName, CG, DOB)
VALUES (28, "Emon", 3.58, "2004-05-16");
```

### Purpose
- Adds a single record to a table
- Populates the database with data
- Specifies values for designated columns

### Syntax
```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

### Key Points
- Column names are optional if values for all columns are provided in the correct order
- Column order in the INSERT statement can differ from the table's column order
- String values must be enclosed in quotes
- Date values are typically formatted as 'YYYY-MM-DD'
- Columns not listed will receive their default value or NULL

## INSERT INTO (Multiple Rows)

The `INSERT INTO` command can also add multiple rows of data in a single statement.

```sql
INSERT INTO Odhrubo (studentID, studentName, CG, DOB)
VALUES 
    (19, "Emran", 3.56, "2004-05-19"),
    (28, "Saad", 3.44, "2004-05-14"),
    (33, "Fahim", 3.50, "2004-05-12");
```

### Purpose
- Adds multiple records to a table in a single operation
- More efficient than multiple single-row inserts
- Maintains data consistency by ensuring all rows are inserted as a unit

### Syntax
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES 
    (value1a, value2a, ...),
    (value1b, value2b, ...),
    (value1c, value2c, ...);
```

### Key Points
- Significantly more efficient than separate INSERT statements for large data sets
- All rows follow the same column structure
- The operation is typically atomic—either all rows are inserted or none
- Most database systems limit the number of rows that can be inserted in a single statement

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### CREATE TABLE
- [MySQL Documentation: CREATE TABLE](https://dev.mysql.com/doc/refman/8.0/en/create-table.html)
- [W3Schools: SQL CREATE TABLE](https://www.w3schools.com/sql/sql_create_table.asp)
- [GeeksforGeeks: SQL CREATE TABLE](https://www.geeksforgeeks.org/sql-create-table/)
- [TutorialsPoint: SQL CREATE TABLE](https://www.tutorialspoint.com/sql/sql-create-table.htm)
- [JavaTpoint: SQL CREATE TABLE](https://www.javatpoint.com/sql-create-table)

### ALTER TABLE ADD
- [MySQL Documentation: ALTER TABLE](https://dev.mysql.com/doc/refman/8.0/en/alter-table.html)
- [W3Schools: SQL ALTER TABLE](https://www.w3schools.com/sql/sql_alter.asp)
- [GeeksforGeeks: SQL ALTER TABLE ADD](https://www.geeksforgeeks.org/sql-alter-add-drop-modify/)
- [TutorialsPoint: SQL ADD COLUMN](https://www.tutorialspoint.com/sql/sql-alter-command.htm)

### INSERT INTO
- [MySQL Documentation: INSERT](https://dev.mysql.com/doc/refman/8.0/en/insert.html)
- [W3Schools: SQL INSERT INTO](https://www.w3schools.com/sql/sql_insert.asp)
- [GeeksforGeeks: SQL INSERT Statement](https://www.geeksforgeeks.org/sql-insert-statement/)
- [TutorialsPoint: SQL INSERT QUERY](https://www.tutorialspoint.com/sql/sql-insert-query.htm)
- [JavaTpoint: SQL INSERT](https://www.javatpoint.com/sql-insert)