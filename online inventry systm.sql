-- database created

CREATE DATABASE BookStoreDB;

-- Select this database to work on.

USE BookStoreDB;

-- Create a table named authors with the following columns

CREATE TABLE authors(author_id INT PRIMARY KEY, name VARCHAR(30), country VARCHAR(30));

-- Create another table named books with the following columns

CREATE TABLE books(book_id INT PRIMARY KEY, title VARCHAR(30), price INT, author_id INT, FOREIGN KEY (author_id) REFERENCES authors(author_id));

-- Add a new column called published_year (number) to the books table.

ALTER TABLE books
ADD published_year INT;

-- Delete all rows from the books table without removing the table itself.

DELETE FROM books;

-- Remove the BookStoreDB completely from the system.

DROP DATABASE BookStoreDB;







