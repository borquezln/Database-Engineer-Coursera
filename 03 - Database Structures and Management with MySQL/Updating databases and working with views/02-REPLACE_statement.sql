USE little_lemon;

REPLACE INTO Starters(StarterName, Cost, StarterType) VALUES ("Cheese bread", 9.50, "Indian");

SELECT * FROM Starters;

REPLACE INTO Starters
SET StarterName = "Cheese bread", Cost = 9.75, StarterType = "Indian";

SELECT * FROM Starters;