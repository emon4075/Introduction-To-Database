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