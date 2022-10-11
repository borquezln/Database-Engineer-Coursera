CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Clients(
	ClientID int NOT NULL, 
	ClientName varchar(255) DEFAULT NULL, 
	ClientAddress varchar(255) DEFAULT NULL, 
	ContactNo varchar(10) DEFAULT NULL, 
	PRIMARY KEY (ClientID)
);

INSERT INTO Clients VALUES
	(1, 'Kishan Hughes','223 Golden Hills, North Austin, TX','387986345'),
	(2, 'Indira Moncada','119 Silver Street, Bouldin Creek, TX','334567243'),
	(3, 'Mosha Setsile','785 Bronze Lane, East Austin, TX','315642597'),
	(4, 'Laura Mills','908 Diamond Crescent, South Lamar, TX','300842509'),
	(5, 'Henrik Kreida','345, Golden Hills, North Austin, TX','358208983'),
	(6, 'Millicent Blou','812, Diamond Crescent, North Burnet, TX','347898755');