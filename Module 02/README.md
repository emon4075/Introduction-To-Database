# SQL Commands Reference Guide

This README provides a concise reference for essential SQL commands covered in our discussions.

## Database Management Commands

### USE DATABASE
**Purpose:** Selects a database to work with for subsequent operations.
```sql
USE database_name;
```

### CREATE DATABASE
**Purpose:** Creates a new database.
```sql
CREATE DATABASE database_name;
```

### DROP DATABASE
**Purpose:** Permanently deletes a database and all its contents.
```sql
DROP DATABASE database_name;
```

## Table Management Commands

### CREATE TABLE
**Purpose:** Creates a new table with specified columns and data types.
```sql
CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
```

### ALTER TABLE ADD
**Purpose:** Adds new columns to an existing table.
```sql
ALTER TABLE table_name
ADD column_name datatype [constraints];
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

### ALTER TABLE DROP COLUMN
**Purpose:** Removes a column from an existing table.
```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### ALTER TABLE MODIFY
**Purpose:** Changes the data type of an existing column.
```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_datatype [constraints];
```

## Data Manipulation Commands

### SELECT
**Purpose:** Retrieves data from one or more tables.
```sql
SELECT column1, column2, ...
FROM table_name
[WHERE condition];
```
or to select all columns:
```sql
SELECT * FROM table_name
[WHERE condition];
```

### INSERT (Single Row)
**Purpose:** Adds a new record to a table.
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

### INSERT (Multiple Rows)
**Purpose:** Adds multiple records to a table in a single statement.
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES 
    (value1a, value2a, ...),
    (value1b, value2b, ...),
    (value1c, value2c, ...);
```

### INSERT INTO SELECT
**Purpose:** Copies data from one table to another, potentially across databases.
```sql
INSERT INTO target_table (column1, column2, ...)
SELECT column1, column2, ...
FROM source_table
[WHERE condition];
```

### UPDATE
**Purpose:** Modifies existing records in a table.
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

### DELETE
**Purpose:** Removes records from a table.
```sql
DELETE FROM table_name
WHERE condition;
```

## Key Concepts and Best Practices

1. **Always use WHERE clauses** with UPDATE and DELETE to prevent affecting all rows.
2. **Back up data before** performing operations that modify or delete data.
3. **Use appropriate data types** for each column based on the data it will store.
4. **Include primary keys** in tables to uniquely identify records.
5. **Specify NOT NULL** for columns that should always contain a value.
6. **Test complex queries** with SELECT statements before performing data modifications.
7. **Use transactions** for operations that need to be performed as a unit.

## Resource Links for Learning SQL

- **W3Schools:** [SQL Tutorial](https://www.w3schools.com/sql/)
- **GeeksforGeeks:** [SQL Tutorial](https://www.geeksforgeeks.org/sql-tutorial/)
- **TutorialsPoint:** [SQL Tutorial](https://www.tutorialspoint.com/sql/index.htm)
- **JavaTpoint:** [SQL Tutorial](https://www.javatpoint.com/sql-tutorial)
- **MySQL Documentation:** [Reference Manual](https://dev.mysql.com/doc/refman/8.0/en/)