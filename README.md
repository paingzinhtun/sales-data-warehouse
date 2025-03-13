# Sales Data Warehouse

## Project Overview
This project is a Sales Data Warehouse built using PostgreSQL. It follows a star schema design with fact and dimension tables, optimized for analytics and reporting. The project includes data cleaning, product performance analysis, and customer segmentation using Python (Pandas, SQLAlchemy) and Jupyter notebooks.

# Project Structure
```
/sales-data-warehouse
│
├── **docs/**            # Documentation
│   ├── schema_design.md # Database schema explanation
│   └── optimization_tips.md # Performance tips
│
├── **database/**        # SQL scripts
│   ├── schema.sql       # Table creation script
│   ├── sample_data.sql  # Sample data script
│   └── queries.sql      # Common SQL queries
│
├── **notebooks/**       # Jupyter Notebooks for analysis
│   ├── data_cleaning.ipynb  # Data cleaning notebook
│   ├── product_performance.ipynb  # Product analysis notebook
│   └── customer_segmentation.ipynb  # Customer insights notebook
│
├── **data/**            # Processed data
│   └── cleaned_sales_data.csv  # Cleaned dataset
│
├── **assets/**          # Miscellaneous project files
│   └── ERD.png          # Entity-Relationship Diagram
│
├── **README.md**        # Project overview and instructions
```

## 1️⃣ Step 1: Set Up the Project

### Clone the repository:
```bash
git clone https://github.com/paingzinghtun/sales-data-warehouse.git  
cd sales-data-warehouse
```

### Install dependencies:
```bash
pip install pandas sqlalchemy psycopg2 jupyter
```

## 2️⃣ Step 2: Database Schema Design

The warehouse follows a star schema:
- **Fact Table**: fact_sales
- **Dimension Tables**: dim_customer, dim_product, dim_date, dim_region

View the schema details in `docs/schema_design.md`.

Run `schema.sql` to create tables in PostgreSQL:
```bash
psql -U username -d sales_db -f schema.sql
````

## 3️⃣ Step 3: Insert Sample Data

Load sample data into the database:
```bash
psql -U username -d sales_db -f sample_data.sql
```

## 4️⃣ Step 4: Run SQL Queries for Analysis

Check total sales per product:
```bash
psql -U username -d sales_db -f queries.sql
```

## 5️⃣ Step 5: Data Cleaning and Preprocessing

Open Jupyter Notebook:
```bash
jupyter notebook
```

Run `notebooks/data_cleaning.ipynb` to clean sales data and save it as `data/cleaned_sales_data.csv`.

## 6️⃣ Step 6: Product Performance Analysis

Run `notebooks/product_performance.ipynb` to analyze top-selling products.


## 7️⃣ Step 7: Customer Segmentation & Insights

Run `notebooks/customer_segmentation.ipynb` to analyze customer behavior.

## 8️⃣ Step 8: Optimize Query Performance

Best practices for indexing, partitioning, and materialized views are in `docs/optimization_tips.md`.

Run `VACUUM ANALYZE` for PostgreSQL performance tuning.

## 9️⃣ Step 9: Push Changes to GitHub

Update your repository:
```bash
git add .
git commit -m "Updated data analysis notebooks"
git push origin main
```

## 🔹 Technologies Used
- **PostgreSQL** – Database for sales data
- **Python (Pandas, SQLAlchemy)** – Data analysis
- **Jupyter Notebooks** – Exploratory data analysis
- **Markdown & SQL** – Documentation and queries

## 📌 Future Improvements
- Add real-world datasets for more insights
- Implement real-time sales tracking
- Improve customer segmentation with Machine Learning

## 📧 Contact
For any queries or contributions, contact: paingzinhtun.deai@gmail.com




