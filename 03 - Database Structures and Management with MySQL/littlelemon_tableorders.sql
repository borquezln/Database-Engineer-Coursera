CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Table_Orders ( 
    OrderID INT,
    TableNo INT,
    MenuID INT,
    BookingID INT,
    BillAmount INT,
    Quantity INT,
    PRIMARY KEY (OrderID,TableNo)
);

INSERT INTO Table_Orders VALUES
    (1, 12, 1, 1, 2, 86),
    (2, 19, 2, 2, 1, 37),
    (3, 15, 2, 3, 1, 37),
    (4, 5, 3, 4, 1, 40),
    (5, 8, 1, 5, 1, 43);