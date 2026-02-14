-- Daily Trend for total orders


CREATE VIEW Hourly_Orders AS
    SELECT 
        HOUR(order_time) AS hourly_order,
        COUNT(DISTINCT order_ID) AS total_order
    FROM
        pizza_sales
    GROUP BY HOUR(order_time)
    ORDER BY COUNT(DISTINCT order_ID) DESC;

SELECT 
    *
FROM
    Hourly_Orders;