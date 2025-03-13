-- Insert sample data into dim_product
INSERT INTO dim_product (product_name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Headphones', 'Accessories', 150.00),
('Gaming Console', 'Gaming', 500.00);

-- Insert sample data into dim_customer
INSERT INTO dim_customer (customer_name, gender, age, city) VALUES
('John Doe', 'Male', 28, 'New York'),
('Jane Smith', 'Female', 34, 'Los Angeles'),
('Emily Johnson', 'Female', 22, 'Chicago'),
('Michael Brown', 'Male', 40, 'Houston');

-- Insert sample data into dim_store
INSERT INTO dim_store (store_name, location) VALUES
('Tech Store NY', 'New York'),
('Gadget World LA', 'Los Angeles'),
('ElectroMart Chicago', 'Chicago'),
('Gaming Hub Houston', 'Houston');

-- Insert sample data into dim_date
INSERT INTO dim_date (full_date, year, month, day, quarter, week_of_year) VALUES
('2024-03-01', 2024, 3, 1, 1, 9),
('2024-03-02', 2024, 3, 2, 1, 9),
('2024-03-03', 2024, 3, 3, 1, 9),
('2024-03-04', 2024, 3, 4, 1, 10);

-- Insert sample data into fact_sales
INSERT INTO fact_sales (date_id, product_id, customer_id, store_id, quantity_sold, total_sales) VALUES
(1, 1, 1, 1, 2, 2400.00),  -- John Doe bought 2 Laptops
(2, 2, 2, 2, 1, 800.00),   -- Jane Smith bought 1 Smartphone
(3, 3, 3, 3, 3, 450.00),   -- Emily Johnson bought 3 Headphones
(4, 4, 4, 4, 1, 500.00);   -- Michael Brown bought 1 Gaming Console

 
