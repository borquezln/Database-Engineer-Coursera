CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Orders(
	OrderID INT,
	ItemID INT,
	Quantity INT,
	OrderCost INT,
	OrderDate DATE,
	DeliveryDate DATE,
	OrderStatus VARCHAR(50),
	PRIMARY KEY(OrderID)
);

INSERT INTO Orders VALUES
	(1,1,50,122000,'2022-04-05','2022-05-25', 'Delivered'),
	(2,2,75,28000,'2022-03-08',NULL, 'In progress'),
	(3,3,80,25000,'2022-05-19','2022-06-08', 'Delivered'),
	(4,4,45,100000,'2022-01-10',NULL, 'In progress'),
	(5,5,70,56000,'2022-05-19',NULL, 'In progress'),
	(6,6,60,90000,'2022-06-10','2022-06-18', 'Delivered');