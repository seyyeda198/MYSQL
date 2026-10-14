-- Table created

CREATE TABLE books (id INT, title VARCHAR(20), author VARCHAR(20), price INT,genre VARCHAR(20));
INSERT INTO books (id, title, author, price, genre)
                    VALUES(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 500, 'Fiction'),
						  (2, 'Harry Potter', 'J.K. Rowling', 400, 'Fantasy'),
						  (3, 'Sapiens', 'Yuval Noah Harari', 300, 'History'),
						  (4, 'Angels & Demons', 'Dan Brown', 350, 'Thriller'),
						  (5, 'Atomic Habits', 'James Clear', 450, 'Science');


-- books that have a price greater than 400.

SELECT * FROM `books`
WHERE price>400;

-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.

SELECT * FROM books
WHERE genre IN ('History', 'Science', 'Fiction');

-- Select the book where the title is exactly 'The Great Gatsby'.

SELECT * FROM `books` 
WHERE title='The Great Gatsby';

-- Select all books that are not written by 'Dan Brown'.

SELECT * FROM `books`
WHERE author <> 'Dan Brown';