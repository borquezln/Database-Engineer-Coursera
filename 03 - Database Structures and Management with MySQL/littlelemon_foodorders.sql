CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;

CREATE TABLE Food_Orders(
    OrderID INT,
    Quantity INT,
    Cost DECIMAL(4,2)
);

SHOW COLUMNS FROM Food_Orders;