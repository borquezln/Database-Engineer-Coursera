USE Lucky_Shrub;

REPLACE INTO Clients_Orders(OrderID, ClientID, ProductID, Quantity, Cost) VALUES
    (9, "Cl1", "P1", 10, 5000),
    (10, "Cl2", "P2", 5, 100);

SELECT * FROM Clients_Orders;

REPLACE INTO Clients_Orders
SET OrderID = 9, ClientID = "Cl1", ProductID = "P1", Quantity = 10, Cost = 500;

SELECT * FROM Clients_Orders;