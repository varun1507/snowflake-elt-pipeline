-- Aggregate total sales per customer
INSERT INTO customer_sales
SELECT 
    customer_id,
    SUM(amount) AS total_amount
FROM raw_orders
GROUP BY customer_id;
