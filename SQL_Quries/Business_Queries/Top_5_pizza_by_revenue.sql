-- top 5 Pizza by Revenue--

CREATE VIEW Top_5_pizza_by_revenue AS
    SELECT 
        pizza_name, SUM(total_price) AS total
    FROM
        pizza_sales
    GROUP BY pizza_name
    ORDER BY total DESC
    LIMIT 5;


SELECT 
    *
FROM
    Top_5_pizza_by_revenue;