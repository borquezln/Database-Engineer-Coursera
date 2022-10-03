# MySQL constraints (Optional)

## PRACTICE USING MYSQL CONSTRAINTS

Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings and anniversaries in Texas. The company's database contains several tables of data, including the 'Staff' table that contains information about the Staff ID, the full name and the phone number. 
 
## Instructions

To complete this exercise, keep MySQL terminal open from the previous lab, or use MySQL on your own machine. To install MySQL on your own machine you can follow the instructions provided in the link in the additional resources item in the first module.  

### Prerequisites
To complete this lab, you must have already created the Mangata and Gallo database in MySQL so that you can create the required tables inside of it. If you do not have the database, then you can create it in MySQL using the following instructions.

The code to create and use the database is as follows:

1: Create a database
```SQL 
CREATE DATABASE Mangata_Gallo; 
``` 

2: Use database
```SQL 
USE Mangata_Gallo; 
``` 

 
## Tasks

**Task 1:** Create the Staff table with the following PRIMARY KEY and NOT NULL constraints:
* Staff ID should be INT, NOT NULL and PRIMARY KEY
* PhoneNumber should be INT, NOT NULL and UNIQUE 
* FullName: VARCHAR(100) NOT NULL.

**Task 2:** Create the 'ContractInfo' table with the following key and domain constraints:
* Contract ID should be INT, NOT NULL and PRIMARY KEY
* StaffID should be INT, NOT NULL
* Salary should be DECIMAL (7,2), NOT NULL
* Location should be VARCHAR (50) NOT NULL with DEFAULT = "Texas"
* StaffType should be VARCHAR (20) NOT NULL and should accept a "Junior" or a "Senior" value

**Task 3:** Create a foreign key that links the Staff table with the ContractInfo table. In this example, you need to apply the referential integrity rule as follows: 

* Link each member of staff in the Staff table to a specific contract in the Contract Info table.
* Each staff ID existing in the 'Contract Info' table is expected to exist as well in the Staff table.
* The staff ID in the 'Contract Info' table should be defined as a foreign key to reference the Staff ID in the Staff table.