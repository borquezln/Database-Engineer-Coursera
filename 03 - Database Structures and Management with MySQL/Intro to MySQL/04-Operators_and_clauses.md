# Operators and clauses (Optional)

## Lab Instructions  

Lucky Shrub gardening center's database stores data on their employees, customer orders and the details of orders handled by employees.

### Instructions

To complete this exercise, keep MySQL terminal open from the previous lab, or use MySQL on your own machine. To install MySQL on your own machine you can follow the instructions provided in the link in the additional resources item in the first module.  

### Prerequisites  

Y​ou can use the following SQL scripts to set up the luckyshrub_db in your local environment.

```SQL 
CREATE DATABASE luckyshrub_db; 
USE luckyshrub_db;
CREATE TABLE employees (
  EmployeeID int NOT NULL,
  EmployeeName varchar(150) DEFAULT NULL,
  Department varchar(150) DEFAULT NULL,
  ContactNo varchar(12) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  AnnualSalary int DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
);

CREATE TABLE orders (
    OrderID int NOT NULL,
    Department varchar(100) DEFAULT NULL,
    OrderDate date DEFAULT NULL,
    OrderQty int DEFAULT NULL,
    OrderTotal int DEFAULT NULL,
    PRIMARY KEY (OrderID)
);

CREATE TABLE employee_orders (
    OrderID int NOT NULL,
    EmployeeID int NOT NULL,
    Status VARCHAR(150),
    HandlingCost int DEFAULT NULL,
    PRIMARY KEY (EmployeeID,OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID)
);

INSERT INTO employees VALUES
    (1,'Seamus Hogan', 'Recruitment', '351478025', 'Seamus.h@luckyshrub.com',50000),
    (2,'Thomas Eriksson', 'Legal', '351475058', 'Thomas.e@luckyshrub.com',75000),
    (3,'Simon Tolo', 'Marketing', '351930582','Simon.t@luckyshrub.com',40000),
    (4,'Francesca Soffia', 'Finance', '351258569','Francesca.s@luckyshrub.com',45000),
    (5,'Emily Sierra', 'Customer Service', '351083098','Emily.s@luckyshrub.com',35000),
    (6,'Maria Carter', 'Human Resources', '351022508','Maria.c@luckyshrub.com',55000),
    (7,'Rick Griffin', 'Marketing', '351478458','Rick.G@luckyshrub.com',50000);

INSERT INTO orders VALUES
    (1,'Lawn Care','2022-05-05',12,500),
    (2,'Decking','2022-05-22',150,1450),
    (3,'Compost and Stones','2022-05-27',20,780),
    (4,'Trees and Shrubs','2022-06-01',15,400),
    (5,'Garden Decor','2022-06-10',2,1250),
    (6,'Lawn Care','2022-06-10',12,500),
    (7,'Decking','2022-06-25',150,1450),
    (8,'Compost and Stones','2022-05-29',20,780),
    (9,'Trees and Shrubs','2022-06-10',15,400),
    (10,'Garden Decor','2022-06-10',2,1250),
    (11,'Lawn Care','2022-06-25',10,400),
    (12,'Decking','2022-06-25',100,1400),
    (13,'Compost and Stones','2022-05-30',15,700),
    (14,'Trees and Shrubs','2022-06-15',10,300),
    (15,'Garden Decor','2022-06-11',2,1250),
    (16,'Lawn Care','2022-06-10',12,500),
    (17,'Decking','2022-06-25',150,1450),
    (18,'Trees and Shrubs','2022-06-10',15,400),
    (19,'Lawn Care','2022-06-10',12,500),
    (20,'Decking','2022-06-25',150,1450),
    (21,'Decking','2022-06-25',150,1450);

INSERT INTO employee_orders VALUES
    (1,3,"In Progress",200),
    (1,5,"Not Recieved",300),
    (1,4,"Not Recieved",250),
    (2,3,"Completed",200),
    (2,5,"Completed",300),
    (2,4,"In Progress",250),
    (3,3,"In Progress",200),
    (3,5,"Not Recieved",300),
    (3,4,"Not Recieved",250),
    (4,3,"Completed",200),
    (4,5,"In Progress",300),
    (4,4,"In Progress",250),
    (5,3,"Completed",200),
    (5,5,"In Progress",300),
    (5,4,"Not Recieved",250),
    (11,3,"Completed",200),
    (11,5,"Completed",300),
    (11,4,"Not Recieved",250),
    (14,3,"Completed",200),
    (14,5,"Not Recieved",300),
    (14,4,"Not Recieved",250);
```

## Examples of using ANY and ALL operators with the GROUP BY and HAVING clauses

The Lucky Shrub database contains a table called orders that stores data about orders placed by different departments.
![Orders table](images\04-orders.PNG) 

There’s also the employees table that stores data about Lucky Shrub’s employees. 
![Employees table](images\04-employees.PNG)

Finally, there’s an employee_orders table that stores data about the employees who are handling the orders.
![Employee_orders table](images\04-employee_orders.PNG)

## Tasks

**Task 1:** Use the ANY operator to identify all employees with the Order Status status 'Completed'.

**Task 2:** Use the ALL operator to identify the IDs of employees who earned a handling cost of "more than 20% of the order value" from all orders they have handled.

**Task 3:** Use the GROUP BY clause to summarize the duplicate records with the same column values into a single record by grouping them based on those columns.

**Task 4:** Use the HAVING clause to filter the grouped data in the subquery that you wrote in task 3 to filter the 20% OrderTotal values to only retrieve values that are more than $100.