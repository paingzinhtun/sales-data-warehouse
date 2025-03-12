# Sales Data Warehouse  

## 📌 Overview  
This project contains a star schema for sales analytics using PostgreSQL.  

## 📂 Project Structure  
- `schema.sql` → Defines the database schema (fact & dimension tables).  
- `sample_data.sql` → Contains example data for testing.  
- `queries.sql` → Common analytical queries.  
- `docs/` → Contains schema documentation and best practices.  
- `notebooks/` → For Jupyter-based data analysis (optional).  

## 🛠️ Installation  
1. Install PostgreSQL.  
2. Run `schema.sql` to create tables.  
3. Load data using `sample_data.sql`.  
4. Use `queries.sql` for analysis.  

## 📊 Schema Design  
A **star schema** with the following tables:  
- `fact_sales` → Sales transactions.  
- `dim_product`, `dim_customer`, `dim_store`, `dim_date` → Dimension tables.  

## 📜 Sample Query  
```sql
SELECT d.year, d.month, SUM(f.total_sales)  
FROM fact_sales f  
JOIN dim_date d ON f.date_id = d.date_id  
GROUP BY d.year, d.month;  
