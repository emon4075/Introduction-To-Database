# SQL UPDATE Command Explanation


This README explains SQL commands for database selection and updating existing records in a table.

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

## UPDATE Statement

The `UPDATE` statement modifies existing records in a table.

```sql
UPDATE odhrubo
SET CG = 3.45,
    studentID = 45,
    DOB = "2004-12-11"
WHERE studentName = "Saad";
```

### Purpose
- Modifies existing data in a table
- Updates one or more columns with new values
- Can target specific rows using a WHERE clause

### Syntax
```sql
UPDATE table_name
SET column1 = value1, 
    column2 = value2, 
    ...
[WHERE condition];
```

### Components Explained
- **UPDATE odhrubo**: Specifies the table to be updated
- **SET**: Keyword followed by column-value pairs
  - **CG = 3.45**: Updates the CG column to 3.45
  - **studentID = 45**: Updates the studentID column to 45
  - **DOB = "2004-12-11"**: Updates the DOB (Date of Birth) column to December 11, 2004
- **WHERE studentName = "Saad"**: Condition that filters which rows to update
  - Only rows where studentName equals "Saad" will be updated
  - Without a WHERE clause, ALL rows would be updated

### Key Points
- The WHERE clause is critical—without it, all rows in the table will be updated
- Multiple columns can be updated in a single UPDATE statement
- Values being assigned must be compatible with the column data types
- String and date values are typically enclosed in quotes
- The operation may affect multiple rows if the WHERE condition matches multiple records
- The operation is generally atomic—either all specified columns are updated or none

### Warning
⚠️ **CAUTION:** Always use a WHERE clause with UPDATE statements unless you intentionally want to update all rows. Without a WHERE clause, the UPDATE will modify all records in the table.

### Best Practices
- Always back up your data before performing updates on production databases
- Use transactions for complex updates to ensure data integrity
- Test UPDATE statements with a SELECT statement using the same WHERE clause first
- Consider using table aliases for complex updates involving joins
- Be mindful of constraints that might prevent updates (e.g., foreign keys, unique constraints)

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### UPDATE Statement
- [MySQL Documentation: UPDATE Statement](https://dev.mysql.com/doc/refman/8.0/en/update.html)
- [PostgreSQL Documentation: UPDATE](https://www.postgresql.org/docs/current/sql-update.html)
- [SQL Server Documentation: UPDATE](https://learn.microsoft.com/en-us/sql/t-sql/queries/update-transact-sql)
- [W3Schools: SQL UPDATE Statement](https://www.w3schools.com/sql/sql_update.asp)
- [GeeksforGeeks: SQL UPDATE Statement](https://www.geeksforgeeks.org/sql-update-statement/)
- [TutorialsPoint: SQL UPDATE Query](https://www.tutorialspoint.com/sql/sql-update-query.htm)
- [JavaTpoint: SQL UPDATE Command](https://www.javatpoint.com/sql-update)