# SQL Pattern Matching Guide

This document explains how to use SQL's LIKE operator for pattern matching in queries.

## Table of Contents
- [Basic Pattern Matching with LIKE](#basic-pattern-matching-with-like)
- [Combining LIKE with NOT and ORDER BY](#combining-like-with-not-and-order-by)
- [Additional Resources](#additional-resources)
- [Metadata](#metadata)

## Basic Pattern Matching with LIKE

```sql
USE world;
SELECT *
FROM country
WHERE Name LIKE "A%"
    AND Continent NOT LIKE "A%"
ORDER BY SurfaceArea;
```

**Explanation:**
- This query selects the `world` database using the `USE` statement
- It retrieves all columns (`*`) from the `country` table
- The `WHERE` clause uses pattern matching with two conditions:
  1. `Name LIKE "A%"`: Selects countries whose names start with the letter 'A'
  2. `Continent NOT LIKE "A%"`: Excludes countries from continents starting with 'A' (e.g., Asia, Africa)
- The percent sign (`%`) is a wildcard character that represents zero or more characters
- Results are sorted by `SurfaceArea` in ascending order (smallest to largest)

## Pattern Matching Wildcards

In SQL LIKE patterns, two main wildcard characters are used:
- `%` (percent): Matches any sequence of zero or more characters
  - Example: `'A%'` matches 'Argentina', 'Australia', 'Austria', etc.
  - Example: `'%land'` matches 'Poland', 'Finland', 'Switzerland', etc.
  - Example: `'%sia%'` matches 'Russia', 'Malaysia', 'Indonesia', etc.

- `_` (underscore): Matches exactly one character
  - Example: `'A_'` would match 'AT' but not 'A' or 'ABC'
  - Example: `'A__'` would match 'ABC' but not 'AB' or 'ABCD'

## Additional Resources

### Official Documentation

#### MySQL Documentation
- [MySQL Pattern Matching](https://dev.mysql.com/doc/refman/8.0/en/pattern-matching.html)
- [MySQL LIKE Operator](https://dev.mysql.com/doc/refman/8.0/en/string-comparison-functions.html#operator_like)

#### PostgreSQL Documentation
- [PostgreSQL Pattern Matching](https://www.postgresql.org/docs/current/functions-matching.html)
- [PostgreSQL LIKE Operator](https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-LIKE)

#### SQL Server Documentation
- [SQL Server LIKE Operator](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/like-transact-sql)
- [SQL Server Pattern Matching](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/like-transact-sql#using-the-like-keyword-and-wildcard-characters)

#### Oracle Documentation
- [Oracle Pattern Matching](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Pattern-matching-Conditions.html)
- [Oracle LIKE Operator](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Pattern-matching-Conditions.html#GUID-D2124F3A-C6E4-4CCA-A40E-2FFCABFD8E19)

### Educational Resources
- [W3Schools SQL LIKE Operator](https://www.w3schools.com/sql/sql_like.asp)
- [GeeksForGeeks SQL LIKE](https://www.geeksforgeeks.org/sql-like/)
- [TutorialsPoint SQL LIKE Clause](https://www.tutorialspoint.com/sql/sql-like-clause.htm)