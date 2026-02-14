-- Total Qyantity

CREATE VIEW Total_quantity AS
    SELECT 
        SUM(quantity) AS total_quantity
    FROM
        pizza_sales;

SELECT 
    *
FROM
    Total_quantity;