USE lucky_shrub;

SELECT EmployeeID, EmployeeName
FROM employees
WHERE EmployeeID = ANY
    (SELECT EmployeeID
    FROM employee_orders
    WHERE OrderStatus = "Completed");

SELECT EmployeeID, HandlingCost
FROM employee_orders
WHERE HandlingCost > ALL
    (SELECT ROUND(OrderTotal/100 * 20)
    FROM orders);

SELECT EmployeeID, HandlingCost
FROM employee_orders
WHERE HandlingCost > ALL
    (SELECT ROUND(OrderTotal/100 * 20)
    FROM orders)
GROUP BY EmployeeID, HandlingCost;

SELECT EmployeeID, HandlingCost
FROM employee_orders
WHERE HandlingCost > ALL
    (SELECT ROUND(OrderTotal/100 * 20) AS twentyPercent
    FROM orders
    GROUP BY OrderTotal
HAVING twentyPercent > 100)
GROUP BY EmployeeID, HandlingCost;