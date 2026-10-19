-- table created 

CREATE TABLE books(book_id INT, title VARCHAR(20), author VARCHAR(20), price INT, stock INT);
INSERT INTO books(book_id,title,author,price,stock);

-- Add the 3 books to the table:

INSERT INTO books
VALUES(1, 'Learn SQL', 'John Smith', 400, 10),
      (2, 'Mastering Python', 'Jane Doe', 600, 5),
      (3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

-- Increase the price of the book 'Learn SQL' by 50 and update its stock to 12.

UPDATE books
SET price = price + 50, stock = 12
WHERE title = 'Learn SQL';

-- Decrease the stock by 2 for books where the price is greater than 500.

UPDATE books
SET stock = stock - 2
WHERE price > 500;

-- Delete the book that has book_id = 3.

DELETE FROM books
WHERE book_id=3;

