-- Per_sales_Pizza_Size


select * from pizza_sales;


CREATE OR REPLACE VIEW Per_Of_Pizz_Size_Contribution AS
SELECT 
    pizza_size,
    ROUND(
        SUM(total_price) * 100 /
        (SELECT SUM(total_price) FROM pizza_sales),
        2
    ) AS per_pizza_size_cont
FROM pizza_sales
GROUP BY pizza_size
ORDER BY per_pizza_size_cont DESC;

SELECT * FROM Per_Of_Pizz_Size_Contribution;


