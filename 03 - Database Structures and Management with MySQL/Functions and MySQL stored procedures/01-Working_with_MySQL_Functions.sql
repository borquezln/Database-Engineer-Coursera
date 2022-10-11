USE mangata_gallo;

SELECT CONCAT(lcase(i.ItemName),'-',o.Quantity,'-',ucase(o.OrderStatus))
FROM Item as i, Orders as o
WHERE i.ItemID = o.ItemID;

SELECT DATE_FORMAT(DeliveryDate,'%W')
FROM Orders;

SELECT OrderID, ROUND(OrderCost*0.05,2) AS HandlingCost
FROM Orders;

SELECT DATE_FORMAT(DeliveryDate,'%W')
FROM Orders
WHERE NOT ISNULL(DeliveryDate);