-- Non-normalized table containing repeating groups
CREATE TABLE Orders_Unnormalized (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductInfo VARCHAR(255), -- Contains multiple products like "Product1, Product2, Product3"
    OrderDate DATE
);

-- First Normal Form implementation
CREATE TABLE Orders_1NF (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    OrderDate DATE NOT NULL
);

CREATE TABLE OrderDetails_1NF (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders_1NF (OrderID)
);

-- Sample data for demonstration
INSERT INTO Orders_1NF VALUES (1, 'John Smith', '2025-05-20');

INSERT INTO Orders_1NF VALUES ( 2, 'Sarah Johnson', '2025-05-22' );

INSERT INTO OrderDetails_1NF VALUES (101, 1, 'Laptop', 1, 1200.00);

INSERT INTO OrderDetails_1NF VALUES (102, 1, 'Mouse', 1, 25.00);

INSERT INTO OrderDetails_1NF VALUES (103, 2, 'Monitor', 2, 300.00);

INSERT INTO OrderDetails_1NF VALUES (104, 2, 'Keyboard', 1, 50.00);