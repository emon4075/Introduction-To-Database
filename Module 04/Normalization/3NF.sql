-- Starting point: A 2NF table with transitive dependencies
CREATE TABLE Employees_2NF (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    LocationID INT NOT NULL,
    LocationName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

-- Third Normal Form implementation
CREATE TABLE Locations_3NF (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Departments_3NF (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    LocationID INT NOT NULL,
    Budget DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Locations_3NF (LocationID)
);

CREATE TABLE Employees_3NF (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments_3NF (DepartmentID)
);

-- Sample data for demonstration
INSERT INTO
    Locations_3NF
VALUES (
        1,
        'Headquarters',
        '123 Main St',
        'New York',
        'USA'
    );

INSERT INTO
    Locations_3NF
VALUES (
        2,
        'Research Campus',
        '456 Tech Blvd',
        'San Francisco',
        'USA'
    );

INSERT INTO
    Departments_3NF
VALUES (
        101,
        'Engineering',
        2,
        2000000.00
    );

INSERT INTO Departments_3NF VALUES ( 102, 'Marketing', 1, 1500000.00 );

INSERT INTO Departments_3NF VALUES (103, 'Finance', 1, 1200000.00);

INSERT INTO
    Employees_3NF
VALUES (
        1,
        'John Doe',
        101,
        '2022-06-15',
        85000.00
    );

INSERT INTO
    Employees_3NF
VALUES (
        2,
        'Jane Smith',
        101,
        '2023-01-10',
        90000.00
    );

INSERT INTO
    Employees_3NF
VALUES (
        3,
        'Michael Johnson',
        102,
        '2021-11-05',
        75000.00
    );

INSERT INTO
    Employees_3NF
VALUES (
        4,
        'Emily Davis',
        103,
        '2022-08-22',
        82000.00
    );