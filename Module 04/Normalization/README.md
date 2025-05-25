# Database Normalization SQL Examples

This repository contains practical SQL implementations of the three main normal forms in database design: 1NF, 2NF, and 3NF. Each script demonstrates the progressive application of normalization principles to improve database design by reducing redundancy and enhancing data integrity.

## Table of Contents

- [Introduction to Database Normalization](#introduction-to-database-normalization)
- [First Normal Form (1NF)](#first-normal-form-1nf)
- [Second Normal Form (2NF)](#second-normal-form-2nf)
- [Third Normal Form (3NF)](#third-normal-form-3nf)
- [References](#references)

## Introduction to Database Normalization

Database normalization is a systematic approach to organizing data in a relational database. It involves dividing large tables into smaller, related tables and defining relationships between them to minimize redundancy and improve data integrity.

## First Normal Form (1NF)

### Principles
- Each table cell should contain a single value
- Each record needs to be unique
- Eliminate repeating groups

### Implementation
Our `1NF_Implementation.sql` script transforms a non-normalized table with repeating product information into two properly related tables:

```sql
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
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders_1NF(OrderID)
);
```

### Key Improvements
- Eliminated repeating product information by creating a separate `OrderDetails_1NF` table
- Established a clear one-to-many relationship between orders and their details
- Each field now contains atomic (indivisible) values
- Added proper primary and foreign keys for data integrity

## Second Normal Form (2NF)

### Principles
- Must be in 1NF
- All non-key attributes must depend on the entire primary key
- Eliminate partial dependencies

### Implementation
Our `2NF_Implementation.sql` script addresses partial dependencies in an enrollment system:

```sql
-- Starting point: A table with partial dependency issues
CREATE TABLE CourseEnrollments_1NF (
    StudentID INT,
    CourseID INT,
    CourseName VARCHAR(100),
    InstructorID INT,
    InstructorName VARCHAR(100),
    EnrollmentDate DATE,
    Grade CHAR(2),
    PRIMARY KEY (StudentID, CourseID)
);

-- Second Normal Form implementation
CREATE TABLE Students_2NF (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Courses_2NF (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    InstructorID INT NOT NULL
);

CREATE TABLE Instructors_2NF (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL
);

CREATE TABLE Enrollments_2NF (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students_2NF(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses_2NF(CourseID)
);
```

### Key Improvements
- Resolved partial dependencies (e.g., CourseID → CourseName, InstructorName)
- Created separate entities for Students, Courses, and Instructors
- Enrollment table now only contains data specific to the enrollment relationship
- Added proper foreign key constraints for referential integrity

## Third Normal Form (3NF)

### Principles
- Must be in 2NF
- No non-key attribute depends on another non-key attribute
- Eliminate transitive dependencies

### Implementation
Our `3NF_Implementation.sql` script eliminates transitive dependencies in an employee management system:

```sql
-- Starting point: A 2NF table with transitive dependencies
CREATE TABLE Employees_2NF (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    LocationID INT NOT NULL,
    LocationName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
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
    Budget DECIMAL(15,2) NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Locations_3NF(LocationID)
);

CREATE TABLE Employees_3NF (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments_3NF(DepartmentID)
);
```

### Key Improvements
- Eliminated transitive dependencies (e.g., DepartmentID → DepartmentName → LocationName)
- Created separate entities for Locations, Departments, and Employees
- Each entity now contains only directly related attributes
- Established proper hierarchical relationships with foreign key constraints

## References

### Official Documentation
- [MySQL Documentation on Database Normalization](https://dev.mysql.com/doc/refman/8.0/en/normalization.html)
- [PostgreSQL Database Design](https://www.postgresql.org/docs/current/ddl.html)
- [Microsoft SQL Server Database Design Best Practices](https://docs.microsoft.com/en-us/sql/relational-databases/database-design/database-design-basics)

### Educational Resources
- [W3Schools SQL Tutorial - Database Normalization](https://www.w3schools.com/sql/sql_normalization.asp)
- [GeeksforGeeks - Normal Forms in DBMS](https://www.geeksforgeeks.org/normal-forms-in-dbms/)
- [Tutorials Point - Database Normalization](https://www.tutorialspoint.com/dbms/database_normalization.htm)
- [Database Journal - Understanding Database Normalization](https://www.databasejournal.com/features/mssql/understanding-normalization-in-sql-server.html)

### Academic Papers and Books
- Date, C.J. (2003). "An Introduction to Database Systems", 8th Edition, Addison Wesley
- Elmasri, R. & Navathe, S. (2016). "Fundamentals of Database Systems", 7th Edition, Pearson
- Codd, E.F. (1970). "A Relational Model of Data for Large Shared Data Banks", Communications of the ACM
