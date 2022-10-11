CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Customers(
    CustomerID INT NOT NULL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber INT NOT NULL UNIQUE
);

INSERT INTO Customers(CustomerID, FullName, PhoneNumber) VALUES
    (1, "Vanessa McCarthy", 0757536378),
    (2, "Marcos Romero", 0757536379),
    (3, "Hiroki Yamane", 0757536376),
    (4, "Anna Iversen", 0757536375),
    (5, "Diana Pinto", 0757536374),
    (6, "Altay Ayhan", 0757636378),
    (7, "Jane Murphy", 0753536379),
    (8, "Laurina Delgado", 0754536376),
    (9, "Mike Edwards", 0757236375),
    (10, "Karl Pederson", 0757936374);