-- author table

CREATE TABLE authors(author_id INT AUTO_INCREMENT PRIMARY KEY,
                    author_name VARCHAR(50) NOT NULL);

-- book table

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id));

-- insert values

INSERT INTO authors (author_name)
VALUES
('Chetan Bhagat'),
('R.K. Narayan'),
('Agatha Christie'),
('George Orwell');

INSERT INTO books (title, author_id)
VALUES
('Five Point Someone', 1),
('2 States', 1),
('The Guide', 2),
('Malgudi Days', 2),
('Murder on the Orient Express', 3);

-- Create an index on the author_id column in the books table to improve search performance.

CREATE INDEX idx_author_id
ON books(author_id);