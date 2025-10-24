CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(60) NOT NULL
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(120) NOT NULL,
    category_id INT NOT NULL,
    -- One-to-many relationship: each book links to one category
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE INDEX idx_books_name ON books(book_name);


SHOW INDEX FROM books;
