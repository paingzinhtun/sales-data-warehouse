# Sales Data Warehouse  

## 📌 Overview  
This project is a Sales Data Warehouse built using PostgreSQL. It follows a star schema design with fact and dimension tables, optimized for analytics and reporting. The project includes data cleaning, product performance analysis, and customer segmentation using Python (Pandas, SQLAlchemy) and Jupyter notebooks.

## 📂 Project Structure  
/sales-data-warehouse  
│── README.md            # Project overview  
│── schema.sql           # SQL script to create tables  
│── sample_data.sql      # SQL script with sample data  
│── queries.sql          # Common queries for analysis  
│── docs/                # Documentation folder  
│   ├── schema_design.md # Explanation of the schema  
│   ├── optimization_tips.md # Performance best practices  
│── notebooks/           # Jupyter notebooks for analysis  
│   ├── data_cleaning.ipynb  # Cleaning and preprocessing  
│   ├── product_performance.ipynb # Product performance analysis  
│   ├── customer_segmentation.ipynb # Customer insights  
│── data/                # Folder for cleaned and processed data  
│── ERD.png              # Entity-Relationship Diagram  
  


## **1️⃣ Step 1: Set Up the Project**
- Clone the repository:
  ```sh
  git clone https://github.com/yourusername/sales-data-warehouse.git  
  cd sales-data-warehouse
  
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
