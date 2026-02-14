-- Cumulative (running total) revenue month by month

SELECT * FROM pizza_sales;


CREATE VIEW Cumulative_Revenue AS 
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    MONTHNAME(order_date) AS month_name,
    SUM(total_price) AS monthly_revenue,
    SUM(SUM(total_price)) OVER (
        ORDER BY YEAR(order_date), MONTH(order_date)
    ) AS cumulative_revenue
FROM pizza_sales
GROUP BY 
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY 
    order_year,
    order_month;
    
    
SELECT * FROM Cumulative_Revenue;

