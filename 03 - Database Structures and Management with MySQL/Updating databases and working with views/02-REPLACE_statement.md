# REPLACE INTO statement (Optional) 
 
## Practice working with the REPLACE INTO statement

Let’s apply what you have learned about the REPLACE INTO statement in different situations.  

Let's begin by exploring the following ‘Starters’ table structure shown from the ‘Little Lemon’ database. 

It consists of three columns/fields
* The ‘StarterName’ set as a primary key,

* The ‘Cost,’

* And the ‘StarterType’ set as default = “Mediterranean”
![Starters table](images\02-starters.PNG) 

## Instructions

To complete this exercise, keep MySQL terminal open from the previous lab, or use MySQL on your own machine. To install MySQL on your own machine you can follow the instructions provided in the link in the additional resources item in the first module.  

###  Prerequisites  

I​n case you don't have the database or Starters table, you can get it by copying/pasting the following code in the MySQL terminal. 

1: The code to create the database is as follows: 
```SQL 
CREATE DATABASE IF NOT EXISTS little_lemon;
``` 

2: The code to use the database is as follows
```SQL 
USE little_lemon; 
``` 

3: The code to create the Starters table.
```SQL 
CREATE TABLE Starters(StarterName VARCHAR(100) NOT NULL PRIMARY KEY, Cost Decimal(3,2), StarterType VARCHAR(100) DEFAULT 'Mediterranean');
``` 

## Tasks

Please attempt the following tasks: 
 
**Task 1:** Use the REPLACE statement to insert a new data record with the following details.

* The ‘StarterName’ = Cheese bread

* The ‘Cost’ = 9.50 and 

* The ‘StarterType’ = Indian 

**Task 2:** Use the REPLACE statement to change the cost of the Cheese bread from $9.50 to $9.75.