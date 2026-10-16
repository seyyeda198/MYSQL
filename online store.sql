-- table created 

CREATE TABLE product (id INT, name VARCHAR(20), category VARCHAR(20), price INT, in_stock VARCHAR(10));
INSERT INTO product(id, name, category, price, in_stock)
VALUES (1, 'laptop', 'electronics', 45000,'yes'),
	   (2, 'mouse', 'electronics', 300, 'yes'),
       (3, 'chair', 'furniture', 1500, 'no'),
       (4, 'book', 'stationary',200, 'yes'),
       (5, 'jeans', 'cloth', 600, 'no')

-- Show all the unique product categories available in the table.

SELECT DISTINCT category FROM product;

-- Select all products that are in stock and have a price less than 500.

SELECT * FROM `product` 
WHERE in_stock = 'yes' AND price < 500;

-- Select all products that are not in stock or have a price greater than 1000.

SELECT * FROM `product`
WHERE in_stock = 'no' OR price > 1000;

-- Show the names and prices of all products, and sort the results by price from highest to lowest.

SELECT name, price FROM product
ORDER BY price DESC;

-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).

SELECT name, price * 1.18 AS price_with_tax
FROM product;





