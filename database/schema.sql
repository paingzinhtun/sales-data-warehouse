-- Drop existing tables if they exist (for re-running the script)
DROP TABLE IF EXISTS fact_sales, dim_product, dim_customer, dim_store, dim_date CASCADE;

-- Create Product Dimension Table
CREATE TABLE dim_product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);

-- Create Customer Dimension Table
CREATE TABLE dim_customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

-- Create Store Dimension Table
CREATE TABLE dim_store (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- Create Date Dimension Table
CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    day INT NOT NULL,
    quarter INT NOT NULL,
    week_of_year INT NOT NULL
);

-- Create Fact Table (Sales)
CREATE TABLE fact_sales (
    sales_id SERIAL PRIMARY KEY,
    date_id INT REFERENCES dim_date(date_id),
    product_id INT REFERENCES dim_product(product_id),
    customer_id INT REFERENCES dim_customer(customer_id),
    store_id INT REFERENCES dim_store(store_id),
    quantity_sold INT NOT NULL,
    total_sales DECIMAL(10,2) NOT NULL
);
 
