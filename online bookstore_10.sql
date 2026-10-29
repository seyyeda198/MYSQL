-- author table created

CREATE TABLE authors(Author_ID INT PRIMARY KEY,
                     Author_name VARCHAR(30),
                     Email_address VARCHAR(30) UNIQUE);

-- book table created

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id));