-- Drop if exists
DROP TABLE IF EXISTS Dim_Customers, Dim_Products, Dim_Targets, Dim_Date, Fact_Order_Lines, Fact_Orders_Aggregate;

-- Dim tables
CREATE TABLE Dim_Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    city VARCHAR(100)
);

CREATE TABLE Dim_Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100)
);

CREATE TABLE Dim_Targets (
    target_id INT AUTO_INCREMENT PRIMARY KEY,
    infull_target_percent FLOAT,
    ontime_target_percent FLOAT,
    otif_target_percent FLOAT,
    UNIQUE KEY uq_targets (infull_target_percent, ontime_target_percent, otif_target_percent)
);

CREATE TABLE Dim_Date (
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    full_date DATE UNIQUE
);

-- Fact tables
CREATE TABLE Fact_Order_Lines (
    order_line_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    agreed_delivery_date DATE,
    actual_delivery_date DATE,
    order_qty INT,
    delivery_qty INT,
    in_full BOOLEAN,
    on_time BOOLEAN,
    otif BOOLEAN,
    target_id INT
);

CREATE TABLE Fact_Orders_Aggregate (
    order_id INT PRIMARY KEY,
    total_lines INT,
    total_order_qty INT,
    total_delivery_qty INT,
    all_on_time BOOLEAN,
    all_in_full BOOLEAN,
    all_otif BOOLEAN
);



CREATE TABLE Fact_Order_Lines (
    order_line_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    customer_id INT,
    product_id INT,
    order_date DATE,
    agreed_delivery_date DATE,
    actual_delivery_date DATE,
    order_qty INT,
    delivery_qty INT,
    in_full BOOLEAN,
    on_time BOOLEAN,
    otif BOOLEAN,
    target_id INT
);

CREATE TABLE Fact_Orders_Aggregate (
    order_id VARCHAR(50) PRIMARY KEY,
    total_lines INT,
    total_order_qty INT,
    total_delivery_qty INT,
    all_on_time BOOLEAN,
    all_in_full BOOLEAN,
    all_otif BOOLEAN
);









