-- Daily Trend for Total Orders--


CREATE VIEW Weekly_orders as 
SELECT 
    DAYNAME(order_date) AS day_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY 
    DAYOFWEEK(order_date),
    DAYNAME(order_date)
ORDER BY 
    DAYOFWEEK(order_date);

select * from Weekly_orders;