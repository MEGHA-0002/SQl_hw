CREATE DATABASE GroceryShop;

USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

ALTER TABLE products
ADD category VARCHAR(50);

TRUNCATE TABLE products;

DROP DATABASE GroceryShop;
