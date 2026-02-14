-- Bottom 5 Pizzas by Total Orders

CREATE VIEW BOTTOM_5_PIZZA_BY_ORDERS AS
    SELECT 
        pizza_name, COUNT(DISTINCT order_id) AS Orders
    FROM
        pizza_sales
    GROUP BY pizza_name
    ORDER BY Orders ASC
    LIMIT 5;
SELECT 
    *
FROM
    BOTTOM_5_PIZZA_BY_ORDERS;