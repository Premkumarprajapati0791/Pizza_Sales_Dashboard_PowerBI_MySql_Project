-- Total Pizzas Sold by Pizza Category


CREATE VIEW pizza_category_quantity AS
    SELECT 
        pizza_category, SUM(quantity) AS QUANTITY
    FROM
        pizza_sales
    GROUP BY pizza_category
    ORDER BY QUANTITY DESC;

SELECT 
    *
FROM
    pizza_category_quantity;
