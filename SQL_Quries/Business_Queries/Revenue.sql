-- total Revenue

CREATE VIEW Revenue AS
    SELECT 
        SUM(total_price) AS revenue
    FROM
        pizza_sales;


SELECT 
    *
FROM
    Revenue;