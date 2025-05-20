# SQL Table Modification Commands

**Last Updated:** 2025-05-19 17:22:56 (UTC)  
**Author:** emon4075

This README explains SQL commands for database selection and table modification.

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

## ALTER TABLE ADD

The `ALTER TABLE ADD` command adds new columns to an existing table.

```sql
USE my_db;
ALTER TABLE customers
ADD (
    customerMail VARCHAR(250),
    buyDate DATE
);
```

### Purpose
- Adds one or more new columns to an existing table
- Expands the table schema to accommodate additional data attributes
- Allows for the evolution of database design as requirements change

### Syntax
```sql
ALTER TABLE table_name
ADD [COLUMN] column_name data_type [constraints],
ADD [COLUMN] column_name data_type [constraints],
...;
```

### Key Points
- New columns are initially filled with NULL values (unless a DEFAULT value is specified)
- Adding columns does not affect existing data
- Multiple columns can be added in a single statement
- The operation may take longer for tables with large amounts of data

## ALTER TABLE DROP COLUMN

The `ALTER TABLE DROP COLUMN` command removes a column from an existing table.

```sql
USE my_db;
ALTER TABLE customers DROP COLUMN buyDate;
```

### Purpose
- Permanently removes a column and all its data from a table
- Simplifies table structure by eliminating unused or unnecessary fields
- Reduces storage requirements and can improve performance

### Syntax
```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Warning
⚠️ **CAUTION:** This operation will permanently delete all data in the specified column. There is no way to recover this data unless you have a backup.

### Key Points
- The operation cannot be undone without restoring from a backup
- Dropping a column may impact existing applications, views, stored procedures, or triggers
- Some systems do not allow dropping columns that are part of indexes or constraints

## ALTER TABLE MODIFY

The `ALTER TABLE MODIFY` command changes the data type of an existing column.

```sql
USE my_db;
ALTER TABLE customers MODIFY phoneNumber DECIMAL;
```

### Purpose
- Changes the data type or attributes of an existing column
- Adjusts column specifications to better match data requirements
- Optimizes storage or improves data validation

### Syntax
```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type [constraints];
```

### Key Points
- Changing a data type may result in data loss if the new type cannot accommodate all existing values
- The operation may fail if the conversion is not possible for some values
- This command may have different syntax across different database systems (e.g., SQL Server uses ALTER COLUMN instead of MODIFY)
- For large tables, this operation may require significant processing time and system resources

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [SQL Server Documentation: USE](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/use-transact-sql)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### ALTER TABLE
- [MySQL Documentation: ALTER TABLE](https://dev.mysql.com/doc/refman/8.0/en/alter-table.html)
- [PostgreSQL Documentation: ALTER TABLE](https://www.postgresql.org/docs/current/sql-altertable.html)
- [SQL Server Documentation: ALTER TABLE](https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-table-transact-sql)
- [W3Schools: SQL ALTER TABLE](https://www.w3schools.com/sql/sql_alter.asp)
- [GeeksforGeeks: SQL ALTER TABLE](https://www.geeksforgeeks.org/sql-alter-add-drop-modify/)
- [TutorialsPoint: SQL ALTER TABLE](https://www.tutorialspoint.com/sql/sql-alter-command.htm)
- [JavaTpoint: SQL ALTER TABLE](https://www.javatpoint.com/sql-alter-table)

### ALTER TABLE ADD COLUMN
- [W3Schools: SQL ADD COLUMN](https://www.w3schools.com/sql/sql_alter.asp)
- [GeeksforGeeks: SQL ALTER TABLE ADD COLUMN](https://www.geeksforgeeks.org/sql-alter-add-drop-modify/)
- [TutorialsPoint: SQL ADD COLUMN](https://www.tutorialspoint.com/sql/sql-alter-command.htm)

### ALTER TABLE DROP COLUMN
- [W3Schools: SQL DROP COLUMN](https://www.w3schools.com/sql/sql_alter.asp)
- [GeeksforGeeks: SQL ALTER TABLE DROP COLUMN](https://www.geeksforgeeks.org/sql-alter-add-drop-modify/)
- [TutorialsPoint: SQL DROP COLUMN](https://www.tutorialspoint.com/sql/sql-alter-command.htm)

### ALTER TABLE MODIFY COLUMN
- [W3Schools: SQL MODIFY COLUMN](https://www.w3schools.com/sql/sql_alter.asp)
- [GeeksforGeeks: SQL ALTER TABLE MODIFY COLUMN](https://www.geeksforgeeks.org/sql-alter-add-drop-modify/)
- [TutorialsPoint: SQL MODIFY COLUMN](https://www.tutorialspoint.com/sql/sql-alter-command.htm)