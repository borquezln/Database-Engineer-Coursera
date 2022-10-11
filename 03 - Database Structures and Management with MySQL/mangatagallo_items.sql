CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Item(
	ItemID INT,
	ItemName VARCHAR(150),
	Cost INT,
	PRIMARY KEY(ItemID)
);

INSERT INTO Item VALUES
	(1,'Engagement ring',2500),
	(2,'Silver brooch',400),
	(3,'Earrings',350),
	(4,'Luxury watch',1250),
	(5,'Golden bracelet',800),
	(6,'Gemstone',1500);