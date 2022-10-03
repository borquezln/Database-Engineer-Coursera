CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Bookings ( 
    BookingID INT,
    TableNo INT,
    GuestFirstName VARCHAR(100),
    GuestLastName VARCHAR(100),
    BookingSlot TIME,
    EmployeeID INT,
    PRIMARY KEY (BookingID)
);

INSERT INTO Bookings VALUES
    (1,12,'Anna','Iversen','19:00:00',1),
    (2, 12, 'Joakim', 'Iversen', '19:00:00', 1),
    (3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3),
    (4, 15, 'Marcos', 'Romero', '17:30:00', 4),
    (5, 5, 'Hiroki', 'Yamane', '18:30:00', 2),
    (6, 8, 'Diana', 'Pinto', '20:00:00', 5);