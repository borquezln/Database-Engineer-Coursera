USE little_lemon;

ALTER TABLE Food_Orders
MODIFY OrderID INT PRIMARY KEY;

ALTER TABLE Food_Orders
MODIFY Quantity INT NOT NULL,
MODIFY Cost DECIMAL(4,2) NOT NULL;

ALTER TABLE Food_Orders
ADD COLUMN OrderDate DATE NOT NULL,
ADD COLUMN CustomerID INT NOT NULL,
ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Food_Orders
DROP COLUMN OrderDate;

SHOW COLUMNS FROM Food_Orders;

ALTER TABLE OrderStatus
CHANGE Order_status DeliveryStatus VARCHAR(15);

ALTER TABLE OrderStatus
RENAME OrderDeliveryStatus;