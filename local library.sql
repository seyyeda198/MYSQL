-- books table created

CREATE TABLE books(book_id INT, title VARCHAR(30));
INSERT INTO books(book_id,title)
VALUES(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

-- borrowers table created

CREATE TABLE borrowers(borrower_id INT, name VARCHAR(30), book_id INT);
INSERT INTO borrowers(borrower_id,name,book_id)
VALUES(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

-- Show the list of all books along with the name of the person who borrowed them (if borrowed).

SELECT books.title, borrowers.name
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

-- Show the list of all borrowers along with the book details they borrowed (if any).

SELECT borrowers.name, books.title
FROM books
RIGHT JOIN borrowers
ON borrowers.book_id = books.book_id;

-- Show the list of all books that have not been borrowed by anyone.

SELECT books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

-- Show the list of all borrowers even if they haven't borrowed any book.-- books table

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;



