# Practicing subqueries (Optional)

Based in Chicago, Illinois, Little Lemon is a family-owned Mediterranean restaurant focused on traditional recipes served with a modern twist. 

You can use the provided SQL scripts to create and set up their database.

## Instructions 
To complete this exercise, you can either keep the MySQL terminal open from the previous lab, or use MySQL on your own machine. To install MySQL on your own machine you can follow the instructions provided in the link in the additional resources item in the first module of this course.

###  Prerequisites  
Here is the code to create and use the littlelemon_db database: 
```SQL 
CREATE DATABASE littlelemon_db;
USE littlelemon_db;
``` 

And the code to populate the MenuItems table with relevant data.  
```SQL 
CREATE TABLE MenuItems (
  ItemID int NOT NULL,
  Name varchar(200) DEFAULT NULL,
  Type varchar(100) DEFAULT NULL,
  Price int DEFAULT NULL,
  PRIMARY KEY (ItemID)
);

INSERT INTO MenuItems VALUES
(1,'Olives','Starters',5),
(2,'Flatbread','Starters',5),
(3,'Minestrone','Starters',8),
(4,'Tomato bread','Starters',8),
(5,'Falafel','Starters',7),
(6,'Hummus','Starters',5),
(7,'Greek salad','Main Courses',15),
(8,'Bean soup','Main Courses',12,),
(9,'Pizza','Main Courses',15),
(10,'Greek yoghurt','Desserts',7),
(11,'Ice cream','Desserts',6),
(12,'Cheesecake','Desserts',4),
(13,'Athens White wine','Drinks',25),
(14,'Corfu Red Wine','Drinks',30),
(15,'Turkish Coffee','Drinks',10),
(16,'Turkish Coffee','Drinks',10),
(17,'Kabasa','Main Courses',17); 
```
![Table Menu Items](images/08-menuitems.PNG) 

The code to ​create the LowCostMenuItems table.
```SQL 
CREATE TABLE LowCostMenuItems
(ItemID INT, Name VARCHAR(200), Price INT, PRIMARY KEY(ItemID));
```

## Tasks
**Task 1:** Find the minimum and the maximum average prices at which the customers can purchase food and drinks.

Hint: In this task, you must write subqueries using the FROM clause. Your subquery would find the average prices of menu items by their type. The subquery result will be the input for the outer query to find the minimum and maximum average prices.

**Task 2:** Insert data of menu items with a minimum price based on the 'Type' into the LowCostMenuItems table.

Hint: In this task, you must write subqueries in INSERT statements. Your subquery would find the details of menu items with a minimum price based on the 'Type' of menu item. In other words, GROUP BY Type. Then you can insert the data retrieved from the subquery into the LowCostMenuItems table using an INSERT INTO SELECT statement.

**Task 3:** Delete all the low-cost menu items whose price is more than the minimum price of menu items that have a price between $5 and $10.

Hint: You need to write subqueries in DELETE statements in this task. Your subquery will be placed in the WHERE clause of the DELETE statement to find the minimum prices of menu items that have a price between $5 and $10. Use the ALL operator in the outer query to find matches from the values returned from the subquery. Delete those records with matching prices from the LowCostMenuItems table.