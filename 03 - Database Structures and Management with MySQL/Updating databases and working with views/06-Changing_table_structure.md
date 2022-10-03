# ALTER TABLE statement (Optional)

Little Lemon is a family-owned Mediterranean restaurant focused on traditional recipes served with a modern twist. The Little Lemon database contains many data tables, including Customers and Bookings.

The Customers table contains the following columns:
* Customer ID, 
* Full name,
* and phone number.

The Bookings table contains the following data on each booking: 
* Booking ID, 
* Booking date, 
* Table number, 
* Number of guests,
* and the ID of the customer who made the booking.

## Instructions

To complete this exercise, you can either keep the MySQL terminal open from the previous lab, or use MySQL on your own machine. To install MySQL on your own machine you can follow the instructions provided in the link in the additional resources item in the first module of this course.  

###  Prerequisites  

To complete this exercise, you need to have created the Little Lemon database in MySQL. You must also have created the Customers and the Bookings tables and populated them with relevant data. 

Please read the following instructions if you do not have this database or any required tables.

1: The code to create the database is as follows:
```SQL 
CREATE DATABASE IF NOT EXISTS little_lemon;
``` 

2: The code to use the database is as follows:
```SQL 
USE little_lemon;
``` 

3: Create a new table in the Little Lemon restaurant database to store information about customers' orders. The new “Food Orders” table includes three columns:
* Order ID,
* Quantity,
* and Cost

```SQL 
CREATE TABLE FoodOrders (OrderID INT, Quantity INT, Cost Decimal(4,2);
```

4. View the current table structure by typing:
```SQL 
SHOW COLUMNS FROM FoodOrders;
```
![FoodOrders table structure](images\06-FoodOrders.PNG)

## Tasks

**Task 1:** Use the ALTER TABLE statement with MODIFY command to make the OrderID the primary key of the 'FoodOrders' table.

**Task 2:** Apply the NOT NULL constraint to the quantity and cost columns.

**Task 3:** Create two new columns, OrderDate with a DATE datatype and CustomerID with an INT datatype. Declare both must as NOT NULL. Declare the CustomerID as a foreign key in the FoodOrders table to reference the CustomerID column existing in the Customers table.

**Task 4:** Use the DROP command with ALTER statement to delete the OrderDate column from the 'FoodOrder' table. 

**Task 5:** Use the CHANGE command with ALTER statement to rename the column Order_Status in the OrderStatus table to DeliveryStatus. 

**Task 6:** Use the RENAME command with ALTER statement to change the table name from OrderStatus to OrderDeliveryStatus.