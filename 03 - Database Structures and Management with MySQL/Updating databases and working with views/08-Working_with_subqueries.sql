USE little_lemon;

SELECT ROUND(MIN(avgPrice),2), ROUND(MAX(avgPrice),2) 
FROM (
    SELECT ItemType, AVG(Price) AS avgPrice
    FROM Menu_Items 
    GROUP BY ItemType) AS Price;

INSERT INTO Low_Cost_Menu_Items
SELECT ItemID, ItemName, Price
FROM Menu_Items
WHERE Price = ANY (
    SELECT MIN(Price)
    FROM Menu_Items
    GROUP BY ItemType
);

SELECT * FROM Low_Cost_Menu_Items;

DELETE FROM Low_Cost_Menu_Items
WHERE Price > ALL (
    SELECT MIN(Price) as p
    FROM Menu_Items
    GROUP BY ItemType
    HAVING p BETWEEN 5 AND 10
);

SELECT * FROM Low_Cost_Menu_Items;