-- Top 5 Pizzas by Quantity


CREATE VIEW Top_5_Pizza_By_Quantity as 
SELECT pizza_name,SUM(quantity) AS Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Quantity desc
limit 5;

SELECT * FROM Top_5_Pizza_By_Quantity;