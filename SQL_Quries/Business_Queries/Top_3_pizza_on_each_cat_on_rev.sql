SELECT * FROM pizza_sales;

CREATE VIEW TOP_3_PIZZA_IN_EACH_CAT_ON_REV AS 
SELECT *
FROM (
    SELECT 
        pizza_category,
        pizza_name,
        ROUND(SUM(total_price),0) AS total_revenue,
        DENSE_RANK() OVER (
            PARTITION BY pizza_category
            ORDER BY  ROUND(SUM(total_price),0) DESC
        ) AS rank_in_category
    FROM pizza_sales
    GROUP BY pizza_category, pizza_name
) t
WHERE rank_in_category <= 3;


SELECT * FROM TOP_3_PIZZA_IN_EACH_CAT_ON_REV;