-- categories table created

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    description VARCHAR(250));

-- books table created

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id));

-- Add a one-to-many relationship between categories and books.

INSERT INTO categories (category_name, description)
VALUES
('Fiction', 'Fictional stories'),
('Science', 'Science-related books'),
('History', 'Historical books');

INSERT INTO books (book_name, author, category_id)
VALUES
('Harry Potter', 'J.K. Rowling', 1),
('The Alchemist', 'Paulo Coelho', 1),
('A Brief History of Time', 'Stephen Hawking', 2),
('India After Gandhi', 'Ramachandra Guha', 3);

-- Create an index on the book_name column of the books table.

CREATE INDEX idx_name
ON books(book_name);

-- Show all indexes in the books table

SHOW INDEXES FROM books;