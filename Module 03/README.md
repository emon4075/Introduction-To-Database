# SQL Commands Overview

This document provides a brief overview of common SQL commands and operations discussed in our SQL learning series.

## Table of Contents
- [Arithmetic Operations](#arithmetic-operations)
- [Comparison and Filtering](#comparison-and-filtering)
- [Result Sorting](#result-sorting)
- [Unique Values](#unique-values)
- [Pattern Matching](#pattern-matching)

## Arithmetic Operations

SQL supports basic arithmetic operations in SELECT statements and WHERE clauses:

- **Basic calculations**: `SELECT 5 * 4;`
- **Column operations**: `SELECT rental_id * amount FROM payment;`
- **Arithmetic in filters**: `SELECT * FROM payment WHERE payment_id + customer_id < 10;`
- **Modulo operator**: `SELECT studentName FROM odhrubo WHERE studentID % 2 = 1 AND CG >= 3.5;`

## Comparison and Filtering

Filter data using comparison operators, BETWEEN, and IN clauses:

- **Multiple conditions**: 
  ```sql
  SELECT * FROM country 
  WHERE GNP <= 1000 
    AND Continent = "Africa" 
    AND Region <> "Eastern Africa";
  ```

- **Range filtering**: 
  ```sql
  SELECT * FROM country 
  WHERE GNP BETWEEN 1000 AND 2000 
    AND Continent IN ('Asia', 'Africa');
  ```

## Result Sorting

Order results using the ORDER BY clause:

- **Single column sorting**: 
  ```sql
  SELECT Name, GNP, Population 
  FROM country 
  ORDER BY GNP DESC;
  ```

- **Multiple column sorting**: 
  ```sql
  SELECT Name, GNP, Population 
  FROM country 
  ORDER BY Name, GNP DESC;
  ```

## Unique Values

Retrieve and count distinct values using DISTINCT:

- **Get unique values**: 
  ```sql
  SELECT DISTINCT Continent 
  FROM country;
  ```

- **Count unique values**: 
  ```sql
  SELECT COUNT(DISTINCT Continent) 
  FROM country;
  ```

## Pattern Matching

Search for patterns in string data using LIKE:

- **Wildcard patterns**: 
  ```sql
  SELECT * 
  FROM country 
  WHERE Name LIKE "A%" 
    AND Continent NOT LIKE "A%" 
  ORDER BY SurfaceArea;
  ```

Main wildcards:
- `%` - matches any number of characters
- `_` - matches exactly one character