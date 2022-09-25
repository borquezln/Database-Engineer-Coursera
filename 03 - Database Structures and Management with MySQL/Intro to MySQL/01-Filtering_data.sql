USE Lucky_Shrub;

SELECT * FROM Orders WHERE Cost <= 250;

SELECT * FROM Orders WHERE Cost BETWEEN 50 AND 750;

SELECT * FROM Orders WHERE ClientID = 'Cl3' AND Cost > 100;

SELECT * FROM Orders WHERE ProductID IN ('P1', 'P2') AND Quantity > 2;