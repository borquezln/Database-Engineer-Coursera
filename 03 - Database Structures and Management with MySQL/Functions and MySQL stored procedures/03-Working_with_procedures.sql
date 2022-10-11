USE lucky_shrub;

CREATE PROCEDURE GetOrdersData()
    SELECT * FROM Clients_Orders;
CALL GetOrdersData();

CREATE PROCEDURE GetListOfOrdersInRange(MinimumValue DECIMAL, MaximumValue DECIMAL)
    SELECT * FROM Clients_Orders WHERE Cost BETWEEN MinimumValue AND MaximumValue;
CALL GetListOfOrdersInRange(150,600);

DROP PROCEDURE GetOrdersData;
DROP PROCEDURE GetListOfOrdersInRange;