USE lucky_shrub;

SELECT OrderDate
FROM Departments_Orders
GROUP BY OrderDate;

SELECT OrderDate, COUNT(OrderID)
FROM Departments_Orders
GROUP BY OrderDate;

SELECT Department, SUM(OrderQty)
FROM Departments_Orders
GROUP BY Department;

SELECT OrderDate, COUNT(OrderID)
FROM Departments_Orders
GROUP BY OrderDate
HAVING OrderDate BETWEEN '2022-06-01' AND '2022-06-30';