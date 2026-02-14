-- Avg Pizza Per Order


CREATE VIEW Avg_pizza_orders AS
    SELECT 
        ROUND((SUM(quantity) / COUNT(DISTINCT order_id)),
                2) AS avg_pizza_order
    FROM
        pizza_sales;
        
SELECT 
    *
FROM
    Avg_pizza_orders;