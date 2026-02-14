-- Monthly Trend for total orders


CREATE OR REPLACE VIEW Monthly_Orders AS
    SELECT 
        YEAR(order_date) AS order_year,
        MONTH(order_date) AS order_month,
        MONTHNAME(order_date) AS month_name,
        COUNT(DISTINCT order_id) AS total_orders
    FROM
        pizza_sales
    GROUP BY YEAR(order_date) , MONTH(order_date) , MONTHNAME(order_date)
    ORDER BY order_year , order_month;

     
SELECT 
    *
FROM
    Monthly_Orders;