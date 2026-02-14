-- Total Nunber Of Orders

CREATE VIEW Total_Orders AS
    SELECT 
        COUNT(DISTINCT order_id) AS Total_orders
    FROM
        pizza_sales;

SELECT 
    *
FROM
    Total_Orders;