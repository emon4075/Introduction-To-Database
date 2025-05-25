CREATE DATABASE automobile;

USE automobile;

CREATE TABLE vehicle (
    vehicleId VARCHAR(10),
    ownerId VARCHAR(10),
    plateNumber VARCHAR(10),
    phoneNumber INT,
    PRIMARY KEY (vehicleId)
);

SHOW tables;

SHOW COLUMNS FROM vehicle;

CREATE TABLE owner (
    ownerId VARCHAR(10),
    ownerName VARCHAR(50),
    ownerAddress VARCHAR(20),
    PRIMARY KEY (ownerId)
);

SHOW COLUMNS FROM owner;

ALTER TABLE vehicle
ADD FOREIGN KEY (ownerId) REFERENCES owner (ownerId);

SHOW COLUMNS FROM vehicle;