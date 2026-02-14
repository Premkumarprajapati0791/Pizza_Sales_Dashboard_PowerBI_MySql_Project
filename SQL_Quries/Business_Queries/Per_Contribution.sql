-- Percantage of pizza category in Revenue


CREATE VIEW Per_Contribution AS
    SELECT 
        pizza_category,
        ROUND(SUM(total_price) / (SELECT 
                        SUM(total_price)
                    FROM
                        pizza_sales) * 100,
                2) AS Percantage_contribution
    FROM
        pizza_sales
    GROUP BY pizza_category;

SELECT 
    *
FROM
    Per_Contribution;
