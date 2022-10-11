CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Client_Orders(
	OrderID INT NOT NULL,
	ClientID INT DEFAULT NULL,
	ItemID INT DEFAULT NULL,
	Cost INT DEFAULT NULL,
	PRIMARY KEY (OrderID)
);

INSERT INTO Client_Orders VALUES 
	(1,1,1,2500),
	(2,2,2,400),
	(3,3,3,350),
	(4,4,4,1250),
	(5,5,5,800),
	(6,6,6,1500),
	(7,2,4,400),
	(8,3,4,1250),
	(9,4,2,400),
	(10,1,3,350);