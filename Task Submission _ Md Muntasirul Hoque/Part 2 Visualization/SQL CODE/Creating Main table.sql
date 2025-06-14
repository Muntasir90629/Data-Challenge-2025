CREATE DATABASE orders_project;
USE orders_project;

CREATE TABLE raw_orders (
    customer_id INT,
    order_id INT,
    product_id INT,
    actual_delivery_date DATE,
    agreed_delivery_date DATE,
    category VARCHAR(100),
    city VARCHAR(100),
    customer_name VARCHAR(255),
    order_placement_date DATE,
    product_name VARCHAR(255),
    delivery_qty INT,
    in_full BOOLEAN,
    infull_target_percent FLOAT,
    on_time BOOLEAN,
    otif BOOLEAN,
    otif_target_percent FLOAT,
    ontime_target_percent FLOAT,
    order_qty INT
);



select * from  raw_orders
