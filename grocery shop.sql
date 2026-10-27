-- database create

CREATE DATABASE GroceryShop;

-- Select database

USE GroceryShop;

-- table created

CREATE TABLE products(product_id INT PRIMARY KEY,product_name VARCHAR(30),price INT);

-- add a new column called category (text) to the same table.

ALTER TABLE products
ADD catagory VARCHAR(30);

-- The shop owner wants to remove all items from the products table without deleting the table itself.

TRUNCATE TABLE products;

-- delete the entire database as it’s no longer needed.

DROP DATABASE GroceryShop;



