-- BOTTOM 5 Pizzas by Quantity


CREATE VIEW Bottom_5_Pizza_By_Quantity AS
    SELECT 
        pizza_name, SUM(quantity) AS Quantity
    FROM
        pizza_sales
    GROUP BY pizza_name
    ORDER BY Quantity ASC
    LIMIT 5;

SELECT 
    *
FROM
    Bottom_5_Pizza_By_Quantity;