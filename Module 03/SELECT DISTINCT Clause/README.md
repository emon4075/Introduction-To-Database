# SQL DISTINCT Operations Guide

This document explains the SQL DISTINCT operator and how it can be used to retrieve unique values from database tables.

## Table of Contents
- [Basic DISTINCT Operation](#basic-distinct-operation)
- [Counting Distinct Values](#counting-distinct-values)
- [Additional Resources](#additional-resources)
- [Metadata](#metadata)

## Basic DISTINCT Operation

```sql
USE world;
SELECT DISTINCT Continent
FROM country;
```

**Explanation:**
- This query selects the `world` database using the `USE` statement
- The `SELECT DISTINCT Continent` clause retrieves unique values from the `Continent` column
- Without the `DISTINCT` keyword, the query would return all continent values, including duplicates
- The result set contains each continent name only once, regardless of how many countries are in each continent
- This is useful for discovering the range of values in a column or generating lists of unique categories

## Counting Distinct Values

```sql
USE world;
SELECT COUNT(DISTINCT Continent)
FROM country;
```

**Explanation:**
- This query also uses the `world` database
- `COUNT(DISTINCT Continent)` combines two SQL operations:
  1. `DISTINCT Continent`: Finds the unique values in the Continent column
  2. `COUNT()`: Counts the number of these unique values
- The result is a single number representing the total count of distinct continents in the database
- This type of query is commonly used for data analysis and summary statistics without needing to see the actual values

## Additional Resources

### Official Documentation

#### MySQL Documentation
- [MySQL DISTINCT Clause](https://dev.mysql.com/doc/refman/8.0/en/select.html#select-distinct-modifiers)
- [MySQL COUNT Function](https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html#function_count)

#### PostgreSQL Documentation
- [PostgreSQL SELECT DISTINCT](https://www.postgresql.org/docs/current/sql-select.html#SQL-DISTINCT)
- [PostgreSQL Aggregate Functions](https://www.postgresql.org/docs/current/functions-aggregate.html)

#### SQL Server Documentation
- [SQL Server SELECT DISTINCT](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-clause-transact-sql#c-using-distinct-with-select)
- [SQL Server COUNT Function](https://learn.microsoft.com/en-us/sql/t-sql/functions/count-transact-sql)

#### Oracle Documentation
- [Oracle SELECT DISTINCT](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/SELECT.html#GUID-CFA006CA-6FF1-4972-821E-6996142A51C6__CHDDGFHC)
- [Oracle COUNT Function](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/COUNT.html)

### Educational Resources
- [W3Schools SQL DISTINCT Keyword](https://www.w3schools.com/sql/sql_distinct.asp)
- [GeeksForGeeks SQL DISTINCT](https://www.geeksforgeeks.org/sql-distinct-keyword/)
- [TutorialsPoint SQL DISTINCT Keyword](https://www.tutorialspoint.com/sql/sql-distinct-keyword.htm)
