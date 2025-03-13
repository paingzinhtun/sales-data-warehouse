-- 1. View Sales Data
SELECT * FROM fact_sales;

-- 2. Join Sales with Product and Customer Details
SELECT
    f.sales_id,
    d.ful_date AS sales_date,
    p.product_name,
    c.customer_name,
    s.store_name,
    f.quantity_sold,
    f.total_sales
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_customer c ON f.customer_id = c.customer_id
JOIN dim_store s ON f.store_id = s.store_id;

-- This gives us a detailed sales report including data, product, customers, store,
-- quantity, and total sales.

-- 3. Total Revenue per Product
SELECT
    p.product_name,
    SUM(f.total_sales) AS total_revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Insight: See which products generate the most revenue.

-- 4. Best-Selling Product by Quantity
SELECT 
    p.product_name,
    SUM(f.quantity_sold) AS total_units_sold
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 1;
-- Insight: Find the best-selling product in terms of quantity.

-- 5. Top Customers b Spending
SELECT
    c.customer_name,
    SUM(f.total_sales) AS total_spent
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Insight: Identify the top 5 customers based on total spending.

-- 6. Sales Trend Over Time
SELECT
    d.year,
    d.month,
    SUM(f.total_sales) AS monthly_sales
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

-- Insight: Track sales trends month over month.
