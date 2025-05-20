# SQL Ordering Operations Guide

This document explains how to use the SQL ORDER BY clause to sort query results in various ways.

## Table of Contents
- [Basic ORDER BY with DESC](#basic-order-by-with-desc)
- [Multiple Column Ordering](#multiple-column-ordering)
- [Additional Resources](#additional-resources)
- [Metadata](#metadata)

## Basic ORDER BY with DESC

```sql
USE world;
SELECT Name,
    GNP,
    Population
FROM country
ORDER BY GNP DESC;
```

**Explanation:**
- We begin by selecting the `world` database with the `USE` statement
- This query selects three specific columns (`Name`, `GNP`, and `Population`) from the `country` table
- The `ORDER BY GNP DESC` clause sorts the results by the `GNP` column in descending order (largest values first)
- Without the `DESC` keyword, `ORDER BY` would sort in ascending order by default
- This query would be useful for finding the countries with the highest Gross National Product values
- The output maintains the original column order from the SELECT statement while the rows are ordered by GNP

## Multiple Column Ordering

```sql
USE world;
SELECT Name,
    GNP,
    Population
FROM country
ORDER BY Name,
    GNP DESC;
```

**Explanation:**
- This query also selects the same three columns from the `country` table in the `world` database
- The `ORDER BY` clause here specifies multiple sort criteria:
  1. `Name`: Primary sort by country name in ascending order (default when no direction is specified)
  2. `GNP DESC`: Secondary sort by GNP in descending order
- When multiple columns are specified in the `ORDER BY` clause, SQL sorts by the first column, and then for rows with the same value in that column, it sorts by the second column, and so on
- This would be useful when you want an alphabetical list of countries, but for countries with the same name (unlikely in this case, but demonstrated for educational purposes), you'd want to see the higher GNP values first
- This technique is commonly used for producing reports with hierarchical sorting requirements

## Additional Resources

### Official Documentation

#### MySQL Documentation
- [MySQL ORDER BY Clause](https://dev.mysql.com/doc/refman/8.0/en/order-by-optimization.html)
- [MySQL SELECT Statement](https://dev.mysql.com/doc/refman/8.0/en/select.html)

#### PostgreSQL Documentation
- [PostgreSQL ORDER BY Clause](https://www.postgresql.org/docs/current/queries-order.html)
- [PostgreSQL SELECT Statement](https://www.postgresql.org/docs/current/sql-select.html)

#### SQL Server Documentation
- [SQL Server ORDER BY Clause](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-order-by-clause-transact-sql)
- [SQL Server SELECT Statement](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql)

#### Oracle Documentation
- [Oracle ORDER BY Clause](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/SELECT.html#GUID-CFA006CA-6FF1-4972-821E-6996142A51C6__I2066066)
- [Oracle SELECT Statement](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/SELECT.html)

### Educational Resources
- [W3Schools SQL ORDER BY Keyword](https://www.w3schools.com/sql/sql_orderby.asp)
- [GeeksForGeeks SQL ORDER BY](https://www.geeksforgeeks.org/sql-order-by/)
- [TutorialsPoint SQL ORDER BY Clause](https://www.tutorialspoint.com/sql/sql-order-by.htm)
