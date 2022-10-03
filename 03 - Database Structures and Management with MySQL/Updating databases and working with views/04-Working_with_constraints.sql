CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Staff(
    StaffID INT NOT NULL PRIMARY KEY,
    PhoneNumber INT NOT NULL UNIQUE,
    FullName VARCHAR(100) NOT NULL
);
SHOW COLUMNS FROM Staff;

CREATE TABLE Contract_Info(
    ContractID INT NOT NULL PRIMARY KEY,
    StaffID INT NOT NULL,
    Salary DECIMAL (7,2) NOT NULL,
    ContractLocation VARCHAR (50) NOT NULL DEFAULT "Texas",
    StaffType VARCHAR (20) NOT NULL CHECK(StaffType IN("Junior", "Senior")),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
SHOW COLUMNS FROM Contract_Info;