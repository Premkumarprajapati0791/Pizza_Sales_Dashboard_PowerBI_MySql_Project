-- Average Order Value

CREATE OR REPLACE VIEW average_order_value AS
    SELECT 
        ROUND(SUM(total_price) / COUNT(DISTINCT order_id),
                2) AS average_order_value
    FROM
        pizza_sales;

SELECT 
    *
FROM
    average_order_value;