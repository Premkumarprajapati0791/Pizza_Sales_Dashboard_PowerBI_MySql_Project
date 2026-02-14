SET SQL_SAFE_UPDATES = 0;

UPDATE pizza_sales
SET order_time = STR_TO_DATE(order_time, '%H:%i:%s');


ALTER TABLE pizza_sales
MODIFY COLUMN order_time TIME;
