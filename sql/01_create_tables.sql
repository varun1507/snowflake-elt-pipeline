-- Create raw table
CREATE OR REPLACE TABLE raw_orders (
    order_id INT,
    customer_id INT,
    amount FLOAT,
    order_date DATE
);

-- Create curated table
CREATE OR REPLACE TABLE customer_sales (
    customer_id INT,
    total_amount FLOAT
);
