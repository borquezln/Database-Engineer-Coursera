CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Bookings(
    BookingID INT,
    BookingDate DATE,
    TableNumber INT,
    NumberOfGuests INT,
    CustomerID INT
);

INSERT INTO Bookings(BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) VALUES
    (10, '2021-11-10', 7, 5, 1),
    (11, '2021-11-10', 5, 2, 2),
    (12, '2021-11-10', 3, 2, 4),
    (13, '2021-11-11', 2, 5, 5),
    (14, '2021-11-11', 5, 2, 6),
    (15, '2021-11-11', 3, 2, 7),
    (16, '2021-11-11', 3, 5, 1),
    (17, '2021-11-12', 5, 2, 2),
    (18, '2021-11-12', 3, 2, 4),
    (19, '2021-11-13', 7, 5, 6),
    (20, '2021-11-14', 5, 2, 3),
    (21, '2021-11-14', 3, 2, 4);