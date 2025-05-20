USE csecu;
CREATE TABLE Odhrubo (
    studentName VARCHAR(100),
    studentID INT,
    DOB DATE
);
ALTER TABLE Odhrubo
ADD (CG DECIMAL(3, 2));
INSERT INTO Odhrubo (studentID, studentName, CG, DOB)
VALUES (28, "Emon", 3.58, "2004-05-16");