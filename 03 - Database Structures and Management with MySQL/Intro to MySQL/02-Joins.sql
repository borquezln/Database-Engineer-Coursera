USE little_lemon;

SELECT c.FullName, c.PhoneNumber, b.BookingDate, b.NumberOfGuests
FROM Customers AS c INNER JOIN Bookings AS b
ON c.CustomerID = b.CustomerID;

SELECT c.CustomerID, b.BookingID
FROM Customers AS c LEFT JOIN Bookings AS b
ON c.CustomerID = b.CustomerID;