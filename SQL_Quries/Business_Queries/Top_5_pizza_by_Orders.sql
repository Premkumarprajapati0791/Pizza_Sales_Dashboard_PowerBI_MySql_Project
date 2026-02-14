-- Top 5 Pizzas by Total Orders

CREATE VIEW TOP_5_PIZZA_BY_ORDERS AS
    SELECT 
        pizza_name, COUNT(DISTINCT order_id) AS Orders
    FROM
        pizza_sales
    GROUP BY pizza_name
    ORDER BY Orders DESC
    LIMIT 5;
SELECT 
    *
FROM
    TOP_5_PIZZA_BY_ORDERS;