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