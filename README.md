# Snowflake ELT Pipeline

## 📌 Objective

Design an ELT pipeline using Snowflake to process raw transactional data into curated analytical datasets.

---

## 🧩 Business Use Case

This project simulates an e-commerce system where order data is processed to generate customer-level sales insights for reporting and analytics.

---

## 🧠 Architecture

Raw Layer (Snowflake Table)
→ Transformation Layer (SQL)
→ Aggregation Layer
→ Curated Layer
→ Output for Analytics

---

## 🛠️ Tech Stack

* Snowflake (Cloud Data Warehouse)
* SQL (Transformation Logic)

---

## 📥 Data Sources

* `orders.csv` → Contains transactional order data

---

## 🔄 Pipeline Flow

1. Load raw data into Snowflake table (`raw_orders`)
2. Apply transformation logic using SQL
3. Aggregate total sales per customer
4. Store results in curated table (`customer_sales`)
5. Perform incremental updates using MERGE

---

## 🔄 Incremental Processing

This pipeline supports incremental data processing by filtering recent records based on `order_date`.

Only new or updated data is processed instead of reprocessing the entire dataset.

The Snowflake `MERGE` operation is used to perform upsert logic into the curated table.

---

## ⚡ Optimization Techniques

* Incremental load using date-based filtering
* MERGE for efficient upsert operations
* Clustering on `order_date` for improved query performance

---

## ⚡ Key Highlights

* Implemented ELT pipeline using Snowflake
* Designed raw and curated data layers
* Built aggregation logic for analytics
* Implemented incremental processing using MERGE
* Applied performance optimization techniques

---

## 📂 Project Structure

* `data/` → Input dataset
* `sql/` → SQL scripts for pipeline

---

## 🧪 SQL Transformation Logic

```sql
SELECT 
    customer_id,
    SUM(amount) AS total_amount
FROM raw_orders
GROUP BY customer_id;
```

---

## 📊 Sample Output

| customer_id | total_amount |
| ----------- | ------------ |
| 101         | 350          |
| 102         | 300          |
| 103         | 500          |

---

## ▶️ How to Run

1. Create tables using:

   ```sql
   01_create_tables.sql
   ```

2. Load data using:

   ```sql
   02_load_data.sql
   ```

3. Run transformation:

   ```sql
   03_transform.sql
   ```

4. Run incremental load:

   ```sql
   04_incremental_load.sql
   ```

---

## 🚀 Impact

Demonstrates building scalable ELT pipelines in Snowflake with incremental processing, data modeling, and performance optimization aligned with real-world data engineering practices.
