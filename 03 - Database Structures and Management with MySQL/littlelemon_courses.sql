CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Courses(
    CourseName VARCHAR(255) PRIMARY KEY,
    Cost Decimal(4,2)
);

INSERT INTO Courses(CourseName, Cost) VALUES
    ("Greek salad", 15.50),
    ("Bean soup", 12.25),
    ("Pizza", 15.00),
    ("Carbonara", 12.50),
    ("Kabasa", 17.00),
    ("Shwarma", 11.30); 