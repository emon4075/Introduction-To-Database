# SQL Arithmetic Operations Guide

This document explains various SQL arithmetic operations and how they can be used in queries. SQL supports basic arithmetic operations such as addition, subtraction, multiplication, division, and modulo.

## Table of Contents
- [Basic Arithmetic Operation](#basic-arithmetic-operation)
- [Column Multiplication](#column-multiplication)
- [Arithmetic in WHERE Clause](#arithmetic-in-where-clause)
- [Modulo with Logical Operators](#modulo-with-logical-operators)
- [Additional Resources](#additional-resources)

## Basic Arithmetic Operation

```sql
SELECT 5 * 4;
```

**Explanation:**
- This query performs basic multiplication between two literals (5 and 4)
- SQL can perform calculations directly in SELECT statements without needing to reference any tables
- The result will be `20`
- This approach is useful for quick calculations or testing mathematical operations

## Column Multiplication

```sql
USE sakila;
SELECT rental_id * amount FROM payment;
```

**Explanation:**
- First, we select the database `sakila` to work with using the `USE` statement
- This query multiplies the values in two columns: `rental_id` and `amount` from the `payment` table
- For each row in the table, SQL calculates the product of these two columns
- The result set will contain one column with each row showing the calculated product
- This type of operation is commonly used for calculating derived values (like total price, weighted scores, etc.)

## Arithmetic in WHERE Clause

```sql
USE sakila;
SELECT *
FROM payment
WHERE payment_id + customer_id < 10;
```

**Explanation:**
- Again, we're using the `sakila` database
- This query selects all columns (`*`) from the `payment` table
- The `WHERE` clause filters results based on an arithmetic condition
- It only returns rows where the sum of `payment_id` and `customer_id` is less than 10
- This demonstrates how arithmetic operations can be used in the filtering logic
- Such conditions can be useful for complex business rules or data analysis scenarios

## Modulo with Logical Operators

```sql
USE csecu;
SELECT studentName
FROM odhrubo
WHERE studentID % 2 = 1 AND CG >= 3.5;
```

**Explanation:**
- We switch to the `csecu` database
- This query selects the `studentName` column from the `odhrubo` table
- The `WHERE` clause uses two conditions combined with the logical `AND` operator:
  1. `studentID % 2 = 1`: The modulo operator (`%`) returns the remainder after division. This filters for odd-numbered `studentID` values (since odd numbers divided by 2 give a remainder of 1)
  2. `CG >= 3.5`: Only includes students with a CG (Cumulative Grade) of 3.5 or higher
- The query returns names of students who have both odd ID numbers AND a CG of at least 3.5
- This demonstrates combining arithmetic operations with comparison operators for complex filtering

## Additional Resources

### Arithmetic Operators in SQL
- [W3Schools SQL Operators](https://www.w3schools.com/sql/sql_operators.asp)
- [GeeksForGeeks SQL Arithmetic Operators](https://www.geeksforgeeks.org/sql-arithmetic-operators/)
- [TutorialsPoint SQL Operators](https://www.tutorialspoint.com/sql/sql-operators.htm)

### WHERE Clause and Filtering
- [W3Schools SQL WHERE Clause](https://www.w3schools.com/sql/sql_where.asp)
- [GeeksForGeeks SQL WHERE Clause](https://www.geeksforgeeks.org/sql-where-clause/)
- [TutorialsPoint SQL WHERE Clause](https://www.tutorialspoint.com/sql/sql-where-clause.htm)

### Logical Operators
- [W3Schools SQL AND, OR, NOT Operators](https://www.w3schools.com/sql/sql_and_or.asp)
- [GeeksForGeeks SQL AND, OR and NOT Operators](https://www.geeksforgeeks.org/sql-and-or-and-not-operators/)
- [TutorialsPoint SQL AND & OR Operators](https://www.tutorialspoint.com/sql/sql-and-or-clauses.htm)

### SQL Functions and Calculations
- [W3Schools SQL Functions](https://www.w3schools.com/sql/sql_functions.asp)
- [GeeksForGeeks SQL | Functions](https://www.geeksforgeeks.org/sql-functions-aggregate-scalar-functions/)
- [TutorialsPoint SQL Numeric Functions](https://www.tutorialspoint.com/sql/sql-numeric-functions.htm)