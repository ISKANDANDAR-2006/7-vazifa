-- 1 ############################################################################################################################


-- CREATE TABLE books (
--     book_id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     author_id INT NOT NULL,
--     publisher_id INT NOT NULL,
--     genre VARCHAR(100),
--     publish_date DATE,
--     price DECIMAL(10, 2),
--     FOREIGN KEY (author_id) REFERENCES authors(author_id),
--     FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
-- );

-- CREATE TABLE authors (
--     author_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     birth_date DATE,
--     country VARCHAR(100)
-- );

-- CREATE TABLE publishers (
--     publisher_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     city VARCHAR(100),
--     established_year INT
-- );

-- CREATE TABLE book_reviews (
--     review_id INT AUTO_INCREMENT PRIMARY KEY,
--     book_id INT NOT NULL,
--     review_text TEXT,
--     rating INT CHECK (rating BETWEEN 1 AND 5),
--     review_date DATE,
--     FOREIGN KEY (book_id) REFERENCES books(book_id)
-- );


-- 2 ##################################################################################################################################


-- INSERT INTO authors (name, birth_date, country)
-- VALUES
-- ('J.K. Rowling', '1965-07-31', 'United Kingdom'),
-- ('George R.R. Martin', '1948-09-20', 'United States'),
-- ('Jane Austen', '1775-12-16', 'United Kingdom'),
-- ('Haruki Murakami', '1949-01-12', 'Japan'),
-- ('Gabriel García Márquez', '1927-03-06', 'Colombia');


-- INSERT INTO publishers (name, city, established_year)
-- VALUES
-- ('Penguin Random House', 'New York', 1927),
-- ('HarperCollins', 'New York', 1989),
-- ('Simon & Schuster', 'New York', 1924),
-- ('Bloomsbury', 'London', 1986),
-- ('Kodansha', 'Tokyo', 1913);


-- INSERT INTO books (title, author_id, publisher_id, genre, publish_date, price)
-- VALUES
-- ('Harry Potter and the Philosopher's Stone', 1, 4, 'Fantasy', '1997-06-26', 19.99),
-- ('A Game of Thrones', 2, 1, 'Fantasy', '1996-08-06', 24.99),
-- ('Pride and Prejudice', 3, 4, 'Romance', '1813-01-28', 14.99),
-- ('Norwegian Wood', 4, 5, 'Fiction', '1987-09-04', 16.99),
-- ('One Hundred Years of Solitude', 5, 2, 'Magical Realism', '1967-05-30', 18.99),
-- ('The Catcher in the Rye', 3, 1, 'Fiction', '1951-07-16', 15.99),
-- ('Kafka on the Shore', 4, 5, 'Fiction', '2002-09-12', 20.99),
-- ('Emma', 3, 3, 'Romance', '1815-12-23', 12.99),
-- ('Love in the Time of Cholera', 5, 2, 'Magical Realism', '1985-03-05', 21.99),
-- ('Dance of Dragons', 2, 1, 'Fantasy', '2011-07-12', 29.99);

 
--  INSERT INTO book_reviews (book_id, review_text, rating, review_date)
-- VALUES
-- (1, 'An amazing start to a magical journey.', 5, '2022-01-15'),
-- (2, 'Intriguing characters and plot twists.', 4, '2022-02-10'),
-- (3, 'A timeless classic.', 5, '2022-03-05'),
-- (4, 'Beautifully written but a bit slow.', 3, '2022-04-20'),
-- (5, 'Captivating and surreal.', 5, '2022-05-15');

 
-- 3 #################################################################################################################################


-- SELECT * FROM books;
-- SELECT * FROM authors;
-- SELECT * FROM publishers;
-- SELECT * FROM book_reviews;


-- SELECT title AS 'Kitob nomi', price AS 'Narxi' FROM books;
-- SELECT name AS 'Muallif ismi', country AS 'Davlat' FROM authors;
-- SELECT name AS 'Nashriyot nomi', city AS 'Shahar' FROM publishers;

-- SELECT * FROM books WHERE genre = 'Fantasy'; 
-- SELECT * FROM authors WHERE country = 'United Kingdom'; 

-- SELECT * FROM books WHERE genre IN ('Fantasy', 'Romance');


-- SELECT * FROM books WHERE price BETWEEN 15 AND 25;

-- SELECT * FROM books WHERE title LIKE 'Harry%'; 

-- SELECT * FROM book_reviews WHERE review_text IS NULL;

-- SELECT genre, COUNT(*) AS 'Kitoblar soni' FROM books GROUP BY genre;



 
-- 4 ####################################################################################################################


-- SELECT 
--     books.title AS 'Kitob nomi',
--     authors.name AS 'Muallif ismi',
--     publishers.name AS 'Nashriyot nomi',
--     books.price AS 'Narxi'
-- FROM books
-- JOIN authors ON books.author_id = authors.author_id
-- JOIN publishers ON books.publisher_id = publishers.publisher_id;


-- SELECT COUNT(*) AS 'Kitoblar soni' FROM books;
-- SELECT AVG(price) AS 'O\'rtacha narx' FROM books;
-- SELECT SUM(price) AS 'Umumiy narx' FROM books;











