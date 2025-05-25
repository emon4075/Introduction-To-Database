# SQL Database Examples and Normalization - Summary

This repository contains practical SQL implementations of database normalization principles and real-world database schemas. The examples demonstrate best practices in relational database design, data integrity maintenance, and schema organization.

## Table of Contents

- [Overview](#overview)
- [Database Normalization Examples](#database-normalization-examples)
- [Database Schema Examples](#database-schema-examples)
- [Key Implementation Notes](#key-implementation-notes)
- [References](#references)

## Overview

This collection showcases both theoretical database normalization concepts and practical schema implementations for business applications. The examples are designed to demonstrate proper database design techniques that enhance data integrity, reduce redundancy, and improve query performance.

## Database Normalization Examples

### First Normal Form (1NF)
- Eliminates repeating groups by ensuring atomic values
- Implementation example: Orders system with separate Order and OrderDetails tables
- Key improvement: Each field contains only indivisible values

### Second Normal Form (2NF)
- Builds on 1NF by removing partial dependencies
- Implementation example: Course enrollment system with separate Students, Courses, Instructors, and Enrollments tables
- Key improvement: Non-key attributes depend on the entire primary key

### Third Normal Form (3NF)
- Builds on 2NF by eliminating transitive dependencies
- Implementation example: Employee management system with separate Locations, Departments, and Employees tables
- Key improvement: Non-key attributes depend only on primary keys, not on other non-key attributes

## Database Schema Examples

### Restaurant Management System
- **Key Tables**: tbl, waiter, customer, menu, menuItem, table_order, order_menu_item, reservation
- **Features**: Tracks tables, waiters, customers, reservations, orders, menu items, and relationships
- **Relationships**: One-to-many relationships between tables and orders, menus and menu items, etc.

### Automobile Tracking System
- **Key Tables**: vehicle, owner
- **Features**: Maintains information about vehicles and their owners
- **Relationships**: One-to-many relationship between owners and vehicles

### Shopping Cart System
- **Key Tables**: customer, product, cart_order
- **Features**: Tracks customers, products, and orders
- **Relationships**: Customers place orders containing products

## Key Implementation Notes

1. **Normalization Benefits**:
   - Reduced data redundancy
   - Improved data integrity
   - Better update anomaly prevention

2. **Design Considerations**:
   - Appropriate primary and foreign key selection
   - Proper relationship modeling
   - Data type selection for different attributes

3. **Potential Improvements**:
   - Restaurant system: Fix primary key on quantity in order_menu_item
   - Shopping cart: Implement order/order details pattern instead of single product per order
   - Automobile system: Add maintenance and service history tracking

## References

### Official Documentation
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)

### Educational Resources
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [GeeksforGeeks SQL Tutorial](https://www.geeksforgeeks.org/sql-tutorial/)
- [TutorialsPoint SQL Tutorial](https://www.tutorialspoint.com/sql/index.htm)

### Best Practices
- [Database Normalization Guide](https://www.essentialsql.com/get-ready-to-learn-sql-database-normalization-explained-in-simple-english/)
- [SQL Style Guide](https://www.sqlstyle.guide/)
- [Database Design Patterns](https://www.databasestar.com/database-design-patterns/)

---