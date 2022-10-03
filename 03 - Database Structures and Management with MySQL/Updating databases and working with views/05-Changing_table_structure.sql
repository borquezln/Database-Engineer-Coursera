CREATE DATABASE IF NOT EXISTS mangata_gallo;
USE mangata_gallo;

CREATE TABLE Staff(
    StaffID INT,
    FullName VARCHAR(100),
    PhoneNumber VARCHAR(10)
);
SHOW COLUMNS FROM Staff;

ALTER TABLE Staff
MODIFY StaffID INT NOT NULL PRIMARY KEY,
MODIFY FullName VARCHAR(100) NOT NULL,
MODIFY PhoneNumber INT NOT NULL;
SHOW COLUMNS FROM Staff;

ALTER TABLE Staff
ADD COLUMN RoleStaff VARCHAR(50) NOT NULL;
SHOW COLUMNS FROM Staff;

ALTER TABLE Staff
DROP COLUMN PhoneNumber;
SHOW COLUMNS FROM Staff;