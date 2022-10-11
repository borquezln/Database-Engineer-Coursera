USE mangata_gallo;

SELECT ClientID, OrderID, CEIL((Cost -(Cost*0.05))) AS AfterDiscount
FROM client_orders
WHERE ItemID = 4;

SELECT ClientID, OrderID, FORMAT((Cost -(Cost*0.05)), 2) AS AfterDiscount
FROM client_orders
WHERE ItemID = 4;

SELECT ADDDATE(OrderDate,30) AS ExpectedDelDate 
FROM Orders;

SELECT OrderID, ItemID, Quantity, OrderCost, OrderDate, COALESCE(DeliveryDate,'NOT DELIVERED'), OrderStatus
FROM Orders;

SELECT OrderID, NULLIF(OrderStatus,'In Progress') AS status 
FROM Orders;