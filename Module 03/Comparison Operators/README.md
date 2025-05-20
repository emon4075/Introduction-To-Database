# SQL Filtering Operations Guide

This document explains various SQL filtering operations, including comparison operators, BETWEEN, and IN clauses.

## Table of Contents
- [Basic Comparison Operators](#basic-comparison-operators)
- [BETWEEN Operator](#between-operator)
- [IN Operator](#in-operator)
- [Additional Resources](#additional-resources)
- [Metadata](#metadata)

## Basic Comparison Operators

```sql
USE world;
SELECT *
FROM country
WHERE GNP <= 1000
    AND Continent = "Africa"
    AND Region <> "Eastern Africa";
```

**Explanation:**
- First, we select the `world` database using the `USE` statement
- This query returns all columns (`*`) from the `country` table
- The `WHERE` clause uses multiple comparison operators combined with logical AND:
  1. `GNP <= 1000`: Less than or equal to operator (≤) - returns countries with GNP not exceeding 1000
  2. `Continent = "Africa"`: Equality operator (=) - matches only African countries
  3. `Region <> "Eastern Africa"`: Not equal operator (<>) - excludes countries in Eastern Africa
- The query finds all African countries (excluding Eastern Africa) with a GNP of 1000 or less
- All three conditions must be true for a row to be included in the results

## BETWEEN Operator

```sql
USE world;
SELECT *
FROM country
WHERE GNP BETWEEN 1000 AND 2000
    AND Continent IN ('Asia', 'Africa');
```

**Explanation:**
- This query also uses the `world` database
- It selects all columns from the `country` table
- The `WHERE` clause uses two filtering conditions:
  1. `GNP BETWEEN 1000 AND 2000`: The BETWEEN operator selects values within a given range (inclusive)
     - This returns countries with GNP values from 1000 up to and including 2000
  2. `Continent IN ('Asia', 'Africa')`: The IN operator tests if a value matches any value in a specified list
     - This restricts results to countries in either Asia or Africa
- The query returns all Asian and African countries with GNP values between 1000 and 2000 (inclusive)
- Both conditions must be satisfied for a row to appear in the results

## Additional Resources

### Comparison Operators
- [W3Schools SQL Operators](https://www.w3schools.com/sql/sql_operators.asp)
- [GeeksForGeeks SQL Comparison Operators](https://www.geeksforgeeks.org/sql-comparison-operators/)
- [TutorialsPoint SQL Operators](https://www.tutorialspoint.com/sql/sql-operators.htm)

### BETWEEN Operator
- [W3Schools SQL BETWEEN Operator](https://www.w3schools.com/sql/sql_between.asp)
- [GeeksForGeeks SQL BETWEEN Operator](https://www.geeksforgeeks.org/sql-between-operator/)
- [TutorialsPoint SQL BETWEEN Clause](https://www.tutorialspoint.com/sql/sql-between-clause.htm)

### IN Operator
- [W3Schools SQL IN Operator](https://www.w3schools.com/sql/sql_in.asp)
- [GeeksForGeeks SQL IN Operator](https://www.geeksforgeeks.org/sql-in-operator/)
- [TutorialsPoint SQL IN Clause](https://www.tutorialspoint.com/sql/sql-in-clause.htm)
