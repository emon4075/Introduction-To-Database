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
    FOREIGN KEY (StudentID) REFERENCES Students_2NF (StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses_2NF (CourseID)
);

-- Sample data for demonstration
INSERT INTO
    Students_2NF
VALUES (
        1,
        'Alice Brown',
        'alice@email.com'
    );

INSERT INTO Students_2NF VALUES ( 2, 'Bob Wilson', 'bob@email.com' );

INSERT INTO
    Instructors_2NF
VALUES (
        101,
        'Dr. Smith',
        'Computer Science'
    );

INSERT INTO
    Instructors_2NF
VALUES (
        102,
        'Prof. Johnson',
        'Mathematics'
    );

INSERT INTO Courses_2NF VALUES (501, 'Database Systems', 101);

INSERT INTO Courses_2NF VALUES (502, 'Calculus', 102);

INSERT INTO Enrollments_2NF VALUES ( 1001, 1, 501, '2025-01-15', 'A' );

INSERT INTO Enrollments_2NF VALUES ( 1002, 1, 502, '2025-01-15', 'B' );

INSERT INTO Enrollments_2NF VALUES ( 1003, 2, 501, '2025-01-16', 'A' );