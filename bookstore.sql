-- table create

CREATE TABLE books (id INT, title VARCHAR(20), author VARCHAR(20), price INT, stock_status VARCHAR(20), genre VARCHAR(20));
INSERT INTO books(id, title, author, price, stock_status, genre)
VALUES (1, 'Wings of Fire', 'APJ Abdul Kalam', 350, 'In Stock', 'Biography'),
       (2, 'The Alchemist', 'Paulo Coelho', 450, 'In Stock', 'Fiction'),
       (3, 'Atomic Habits', 'James Clear', 800, 'Out of Stock', 'Self-help'),
       (4, 'Ikigai', 'Hector Garcia', 300, 'In Stock', 'Self-help'),
       (5, 'Harry Potter', 'J.K. Rowling', 750, 'Out of Stock', 'Fantasy');

-- Show all the different genres available in the store (no duplicates).

SELECT DISTINCT genre FROM books;

-- List all books that are in stock and priced below 400.

SELECT * FROM `books` 
WHERE stock_status='In Stock' AND price < 400;

-- List all books that are either out of stock or have a price above 700.

SELECT * FROM books
WHERE stock_status = 'Out of Stock' OR price > 700;

-- Show the title and price of every book along with a new column that adds 10% GST to the price.

SELECT title, price, price + (price * 10 / 100) AS price_with_gst
FROM books;

-- Display the title, price, and stock_status of all books, sorted by price from highest to lowest.

SELECT title, price, stock_status
FROM books
ORDER BY price DESC;
