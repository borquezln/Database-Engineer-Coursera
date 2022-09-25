CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Bookings(
    BookingID INT NOT NULL PRIMARY KEY,
    BookingDate DATE NOT NULL,
    TableNumber INT NOT NULL,
    NumberOfGuests INT NOT NULL CHECK ( NumberOfGuests <= 8),
    CustomerID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Bookings(BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) VALUES
    (10, '2021-11-11', 7, 5, 1),
    (11, '2021-11-10', 5, 2, 2),
    (12, '2021-11-10', 3, 2, 4);