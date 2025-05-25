# SQL Database Schemas Collection

This repository contains SQL implementations of three different database schemas: Restaurant Management System, Automobile Tracking System, and Shopping Cart System. Each schema demonstrates database design principles including relationships, constraints, and logical organization of data.

## Table of Contents
- [Introduction](#introduction)
- [Restaurant Management System](#restaurant-management-system)
- [Automobile Tracking System](#automobile-tracking-system)
- [Shopping Cart System](#shopping-cart-system)
- [Implementation Notes](#implementation-notes)
- [References](#references)

## Introduction

These database schemas demonstrate practical applications of relational database design principles, showing how to model real-world business domains. Each schema includes tables with appropriate primary keys, foreign keys, and relationships to maintain data integrity.

## Restaurant Management System

### Schema Overview

The Restaurant Management System tracks tables, waiters, customers, reservations, orders, menu items, and the relationships between them.

### Tables Structure

1. **tbl (Tables)**
   - `table_id` (PK): Unique identifier for each table
   - `location`: Where the table is located in the restaurant

2. **waiter**
   - `waiterId` (PK): Unique identifier for each waiter
   - `name`: Waiter's name
   - `contactNo`: Contact number
   - `shift`: Work shift (morning, evening, etc.)

3. **customer**
   - `customerId` (PK): Unique identifier for each customer
   - `name`: Customer's name
   - `nicNo`: National ID card number
   - `contactNo`: Contact number

4. **menu**
   - `menuId` (PK): Unique identifier for each menu
   - `description`: Menu description
   - `availabilty`: Indicates if the menu is available (1) or not (0)

5. **menuItem**
   - `menuItemId` (PK): Unique identifier for each menu item
   - `description`: Item description
   - `price`: Item price
   - `availability`: Indicates if the item is available (1) or not (0)
   - `menuId` (FK): References the menu this item belongs to

6. **table_order**
   - `orderId` (PK): Unique identifier for each order
   - `dateTime`: When the order was placed
   - `table_Id` (FK): Which table placed the order
   - `waiterId` (FK): Which waiter is handling the order

7. **order_menu_item**
   - `orderId` (FK): References the order
   - `menuItemId` (FK): References the ordered menu item
   - `quantity` (PK): How many of this item were ordered
   - Note: The primary key on quantity is unusual and may be a design issue

8. **reservation**
   - `reservationId` (PK): Unique identifier for each reservation
   - `dateTime`: When the reservation is for
   - `noOfPax`: Number of people
   - `orderId` (FK): Associated order (if any)
   - `table_Id` (FK): Which table is reserved
   - `customerId` (FK): Which customer made the reservation

### Entity Relationships

- Each table can have multiple orders
- Each waiter can handle multiple orders
- Each order can include multiple menu items (via order_menu_item)
- Each menu can have multiple menu items
- Each customer can make multiple reservations
- Reservations are linked to a specific table and potentially to an order

```sql
CREATE DATABASE restaurant;

USE restaurant;

CREATE TABLE tbl (
    table_id INT,
    location VARCHAR(255),
    PRIMARY KEY (table_id)
);

CREATE TABLE waiter (
    waiterId INT,
    name VARCHAR(100),
    contactNo VARCHAR(100),
    shift VARCHAR(100),
    PRIMARY KEY (waiterId)
);

CREATE TABLE customer (
    customerId INT,
    name VARCHAR(100),
    nicNo VARCHAR(20),
    contactNo VARCHAR(10),
    PRIMARY KEY (customerId)
);

CREATE TABLE menu (
    menuId INT,
    description VARCHAR(255),
    availabilty INT,
    PRIMARY KEY (menUId)
);

CREATE TABLE menuItem (
    menuItemId INT,
    description VARCHAR(255),
    price FLOAT,
    availability INT,
    menuId INT,
    PRIMARY KEY (menuItemId),
    FOREIGN KEY (menuId) REFERENCES menu (menuId)
);

CREATE TABLE table_order (
    orderId INT,
    dateTime DATETIME,
    table_Id INT,
    waiterId INT,
    PRIMARY KEY (orderId),
    FOREIGN KEY (table_Id) REFERENCES tbl (table_Id),
    FOREIGN KEY (waiterId) REFERENCES waiter (waiterId)
);

CREATE TABLE order_menu_item (
    orderId INT,
    menuItemId INT,
    quantity INT,
    PRIMARY KEY (quantity),
    FOREIGN KEY (orderId) REFERENCES table_order (orderId),
    FOREIGN KEY (menuItemId) REFERENCES menuitem (menuItemId)
);

CREATE TABLE reservation (
    reservationId INT,
    dateTime DATETIME,
    noOfPax INT,
    orderId INT,
    table_Id INT,
    customerId INT,
    PRIMARY KEY (reservationId),
    FOREIGN KEY (customerId) REFERENCES customer (customerId),
    FOREIGN KEY (table_Id) REFERENCES tbl (table_Id),
    FOREIGN KEY (orderId) REFERENCES table_order (orderId)
);
```

## Automobile Tracking System

### Schema Overview

The Automobile Tracking System maintains information about vehicles and their owners.

### Tables Structure

1. **vehicle**
   - `vehicleId` (PK): Unique identifier for each vehicle
   - `ownerId` (FK): References the owner of the vehicle
   - `plateNumber`: Registration plate number
   - `phoneNumber`: Contact number for the vehicle (possibly for the owner)

2. **owner**
   - `ownerId` (PK): Unique identifier for each owner
   - `ownerName`: Owner's name
   - `ownerAddress`: Owner's address

### Entity Relationships

- Each owner can have multiple vehicles
- Each vehicle belongs to one owner

```sql
CREATE DATABASE automobile;

USE automobile;

CREATE TABLE vehicle (
    vehicleId VARCHAR(10),
    ownerId VARCHAR(10),
    plateNumber VARCHAR(10),
    phoneNumber INT,
    PRIMARY KEY (vehicleId)
);

CREATE TABLE owner (
    ownerId VARCHAR(10),
    ownerName VARCHAR(50),
    ownerAddress VARCHAR(20),
    PRIMARY KEY (ownerId)
);

ALTER TABLE vehicle
ADD FOREIGN KEY (ownerId) REFERENCES owner (ownerId);
```

## Shopping Cart System

### Schema Overview

The Shopping Cart System tracks customers, products, and orders.

### Tables Structure

1. **customer**
   - `customerId` (PK): Unique identifier for each customer
   - `name`: Customer's name
   - `address`: Customer's address
   - `email`: Customer's email address
   - `phone`: Contact number

2. **product**
   - `productId` (PK): Unique identifier for each product
   - `name`: Product name
   - `price`: Product price (with precision for currency values)
   - `description`: Product description

3. **cart_order**
   - `orderId` (PK): Unique identifier for each order
   - `customerId` (FK): References the customer who placed the order
   - `productId` (FK): References the ordered product
   - `quatity`: How many of this product were ordered (note the typo in "quatity")
   - `orderDate`: When the order was placed
   - `status`: Order status (e.g., pending, shipped)

### Entity Relationships

- Each customer can place multiple orders
- Each order is for a specific product by a specific customer
- Each product can be in multiple orders

```sql
CREATE DATABASE shopping_cart_db;

USE shopping_cart_db;

CREATE TABLE customer (
    customerId INT,
    name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100),
    phone VARCHAR(10),
    PRIMARY KEY (customerId)
);

CREATE TABLE product (
    productId INT,
    name VARCHAR(100),
    price NUMERIC(8, 2),
    description VARCHAR(255),
    PRIMARY KEY (productId)
);

CREATE TABLE cart_order (
    orderId INT,
    customerId INT,
    productId INT,
    quatity INT,
    orderDate DATE,
    status VARCHAR(100),
    PRIMARY KEY (orderId),
    FOREIGN KEY (customerId) REFERENCES customer (customerId),
    FOREIGN KEY (productId) REFERENCES product (productId)
);
```

## Implementation Notes

### Design Considerations and Potential Improvements

1. **Restaurant System:**
   - The `order_menu_item` table has `quantity` as a primary key, which doesn't make logical sense. It would be better to have a composite key of (orderId, menuItemId).
   - Consider adding payment tracking tables.
   - Menu and MenuItem could potentially be combined for simpler systems.

2. **Automobile System:**
   - Could benefit from additional tables for maintenance records, service history, etc.
   - The phone number field might be better as VARCHAR to accommodate different formats and international numbers.

3. **Shopping Cart:**
   - The current design only allows one product per order. A more typical e-commerce design would have:
     - Order table (header information)
     - OrderDetail/OrderItem table (with order_id, product_id, quantity)
   - The "quatity" column has a typo and should be "quantity"

## References

### Official Documentation

- [MySQL Documentation](https://dev.mysql.com/doc/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [SQL Server Documentation](https://docs.microsoft.com/en-us/sql/sql-server/)

### Educational Resources

- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [GeeksforGeeks SQL Tutorial](https://www.geeksforgeeks.org/sql-tutorial/)
- [TutorialsPoint SQL Tutorial](https://www.tutorialspoint.com/sql/index.htm)
- [Database Normalization Guide](https://www.essentialsql.com/get-ready-to-learn-sql-database-normalization-explained-in-simple-english/)

### Best Practices

- [SQL Style Guide](https://www.sqlstyle.guide/)
- [Entity Relationship Modeling](https://vertabelo.com/blog/comparing-entity-relationship-diagram-notations/)
- [Database Design Patterns](https://www.databasestar.com/database-design-patterns/)
- [Database Design Anti-Patterns](https://tapoueh.org/blog/2018/03/database-design-anti-patterns/)
---