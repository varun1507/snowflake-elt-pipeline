# Snowflake ELT Pipeline

## 📌 Objective

Design an ELT pipeline using Snowflake to process raw transactional data into curated analytical datasets.

---

## 🧩 Business Use Case

This project simulates an e-commerce system where order data is processed to generate customer-level sales insights.

---

## 🧠 Architecture

Raw Layer (Snowflake Table)
→ Transformation Layer (SQL)
→ Curated Layer (Aggregated Table)

---

## 🛠️ Tech Stack

* Snowflake
* SQL
* Snowpark (conceptual)

---

## 📥 Data Sources

* `orders.csv` → Raw transactional data

---

## 🔄 Pipeline Flow

1. Load raw data into Snowflake table
2. Perform transformation using SQL
3. Aggregate sales per customer
4. Store results in curated table

---

## ⚡ Key Highlights

* Implemented ELT pipeline in Snowflake
* Designed raw and curated data layers
* Used SQL for scalable transformation
* Built aggregation logic for analytics

---

## 📂 Project Structure

* `data/` → Input dataset
* `sql/` → SQL scripts for pipeline

---

## 📊 Sample Output

| customer_id | total_amount |
| ----------- | ------------ |
| 101         | 350          |
| 102         | 300          |
| 103         | 500          |

---

## ▶️ How to Run

1. Create tables using `01_create_tables.sql`
2. Load data using `02_load_data.sql`
3. Run transformation using `03_transform.sql`

---

## 🚀 Impact

Demonstrates building scalable ELT pipelines using Snowflake for transforming raw data into analytical insights.
