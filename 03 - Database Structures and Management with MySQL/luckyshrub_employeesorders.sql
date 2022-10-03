CREATE DATABASE IF NOT EXISTS lucky_shrub; 
USE lucky_shrub;

CREATE TABLE employee_orders(
    OrderID int NOT NULL,
    EmployeeID int NOT NULL,
    OrderStatus VARCHAR(150),
    HandlingCost int DEFAULT NULL,
    PRIMARY KEY (EmployeeID,OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES Departments_Orders(OrderID)
);

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