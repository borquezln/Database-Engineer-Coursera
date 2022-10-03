USE little_lemon;

SELECT *
FROM Bookings
WHERE BookingSlot > (
    SELECT BookingSlot
    FROM Bookings
    WHERE GuestFirstName = 'Vanessa' AND GuestLastName = 'McCarthy'
);

SELECT *
FROM Menu_Items
WHERE Price > ALL(
    SELECT Price
    FROM Menu_Items
    WHERE ItemType IN ('Starters', 'Desserts')
);

SELECT *
FROM Menu_Items
WHERE Price = (
    SELECT Price
    FROM Menu_Items
    WHERE ItemType = 'Starters' AND ItemID = (
        SELECT ItemID
        FROM Menus
        WHERE Cuisine = 'Italian'
    )
);

SELECT *
FROM Menu_Items 
WHERE NOT EXISTS (
    SELECT *
    FROM Table_Orders, Menus
    WHERE Table_Orders.MenuID = Menus.MenuID AND Menus.ItemID = Menu_Items.ItemID
);