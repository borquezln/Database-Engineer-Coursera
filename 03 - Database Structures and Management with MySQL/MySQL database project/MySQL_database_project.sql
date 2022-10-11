USE little_lemon;

SELECT *
FROM Bookings
WHERE BookingDate BETWEEN '2021-11-11' AND '2021-11-13';

SELECT c.FullName, b.BookingID
FROM Customers AS c INNER JOIN Bookings AS b
ON c.CustomerID = b.CustomerID
WHERE BookingDate = '2021-11-11';

SELECT BookingDate, COUNT(BookingDate)
FROM Bookings
GROUP BY BookingDate;

REPLACE Courses
SET CourseName = 'Kabasa', Cost = 20.00;
SELECT * FROM Courses;

CREATE TABLE Delivery_Address(
    DeliveryID INT PRIMARY KEY,
    DeliveryAddress VARCHAR(255) NOT NULL,
    DeliveryType VARCHAR(100) NOT NULL DEFAULT "Private",
    CustomerID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
SHOW COLUMNS FROM DeliveryAddress;

ALTER TABLE Courses
ADD COLUMN Ingredients VARCHAR(255);
SHOW COLUMNS FROM Courses;

SELECT FullName
FROM Customers
WHERE CustomerID = ANY (
    SELECT CustomerID
    FROM Bookings
    WHERE BookingDate = '2021-11-11'
);

CREATE VIEW BookingsView AS
SELECT BookingID, BookingDate, NumberOfGuests
FROM Bookings
WHERE BookingDate < '2021-11-13' AND NumberOfGuests >= 3;
SELECT * FROM BookingsView;

CREATE PROCEDURE GetBookingsData(InputDate DATE)
    SELECT *
    FROM Bookings
    WHERE BookingDate = InputDate;
CALL GetBookingsData('2021-11-13');

SELECT CONCAT("ID: ", BookingID, ", Date: ", BookingDate, ", Number of guests: ", NumberOfGuests)
FROM Bookings;