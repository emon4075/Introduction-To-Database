# SQL DELETE Command Explanation

This README explains SQL commands for database selection and removing records from a table.

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

## DELETE Statement

The `DELETE` statement removes existing records from a table.

```sql
DELETE FROM odhrubo
WHERE CG = 3.44;
```

### Purpose
- Permanently removes records from a table
- Reduces table size by eliminating unwanted or obsolete data
- Can target specific rows using a WHERE clause

### Syntax
```sql
DELETE FROM table_name
[WHERE condition];
```

### Components Explained
- **DELETE FROM odhrubo**: Specifies the table from which records will be deleted
- **WHERE CG = 3.44**: Condition that filters which rows to delete
  - Only rows where the CG (presumably Cumulative Grade) value equals 3.44 will be deleted
  - Without a WHERE clause, ALL rows would be deleted

### Key Points
- The operation is irreversible - deleted data cannot be recovered without a backup
- The WHERE clause is critical—without it, all rows in the table will be deleted
- The operation may affect multiple rows if the WHERE condition matches multiple records
- DELETE respects foreign key constraints; deletion may fail if it would violate these constraints
- For large tables, DELETE operations can be resource-intensive and may lock the table

### Warning
⚠️ **CAUTION:** Always use a WHERE clause with DELETE statements unless you intentionally want to delete all rows. Without a WHERE clause, the DELETE will remove all records from the table.

### Best Practices
- Always back up your data before performing deletions on production databases
- Use transactions for critical DELETE operations to allow for rollback if needed
- Test DELETE statements with a SELECT statement using the same WHERE clause first
  - Example: `SELECT * FROM odhrubo WHERE CG = 3.44;`
- Consider using TRUNCATE TABLE instead of DELETE if you need to remove all rows (faster and uses fewer resources)
- For large-scale deletions, consider breaking the operation into smaller batches
- In some database systems, a soft delete approach (marking records as inactive) may be preferable to physical deletion

## Related Links

### USE DATABASE
- [MySQL Documentation: USE](https://dev.mysql.com/doc/refman/8.0/en/use.html)
- [W3Schools: SQL USE DATABASE](https://www.w3schools.com/sql/sql_ref_use.asp)
- [TutorialsPoint: MySQL USE Statement](https://www.tutorialspoint.com/mysql/mysql-use-statement.htm)

### DELETE Statement
- [MySQL Documentation: DELETE Statement](https://dev.mysql.com/doc/refman/8.0/en/delete.html)
- [PostgreSQL Documentation: DELETE](https://www.postgresql.org/docs/current/sql-delete.html)
- [SQL Server Documentation: DELETE](https://learn.microsoft.com/en-us/sql/t-sql/statements/delete-transact-sql)
- [W3Schools: SQL DELETE Statement](https://www.w3schools.com/sql/sql_delete.asp)
- [GeeksforGeeks: SQL DELETE Statement](https://www.geeksforgeeks.org/sql-delete-statement/)
- [TutorialsPoint: SQL DELETE Query](https://www.tutorialspoint.com/sql/sql-delete-query.htm)
- [JavaTpoint: SQL DELETE Command](https://www.javatpoint.com/sql-delete)

### Comparison: DELETE vs TRUNCATE
- [MySQL Documentation: TRUNCATE TABLE](https://dev.mysql.com/doc/refman/8.0/en/truncate-table.html)
- [GeeksforGeeks: Difference between DELETE and TRUNCATE](https://www.geeksforgeeks.org/difference-between-delete-and-truncate/)
- [TutorialsPoint: SQL TRUNCATE TABLE](https://www.tutorialspoint.com/sql/sql-truncate-table.htm)