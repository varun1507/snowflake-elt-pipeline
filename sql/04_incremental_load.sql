-- Incremental load using MERGE

MERGE INTO customer_sales target
USING (
    SELECT 
        customer_id,
        SUM(amount) AS total_amount,
        CURRENT_TIMESTAMP() AS last_updated
    FROM raw_orders
    WHERE order_date >= CURRENT_DATE - 1   -- incremental logic (last 1 day)
    GROUP BY customer_id
) source
ON target.customer_id = source.customer_id

WHEN MATCHED THEN 
    UPDATE SET 
        target.total_amount = source.total_amount,
        target.last_updated = source.last_updated

WHEN NOT MATCHED THEN
    INSERT (customer_id, total_amount, last_updated)
    VALUES (source.customer_id, source.total_amount, source.last_updated);
