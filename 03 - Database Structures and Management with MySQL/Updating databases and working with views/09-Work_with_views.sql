USE lucky_shrub;

CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, Cost
FROM Clients_Orders;

SELECT * FROM OrdersView;

UPDATE OrdersView SET Cost = 200 WHERE OrderID = 2;

SELECT * FROM OrdersView;

RENAME TABLE OrdersView TO ClientsOrdersView;

DROP VIEW ClientsOrdersView;