--1. Create a database named BoiGharDB. Then create the Publisher 
--and Book tables, with pub_id and book_id as primary keys and 
--Book.pub_id as a foreign key referencing Publisher.
CREATE TABLE Publisher ( 
  pub_id INT PRIMARY KEY, 
  pub_name VARCHAR(50), 
  city VARCHAR(50), 
  est_year INT );

CREATE TABLE Book ( 
  book_id INT PRIMARY KEY, 
  title VARCHAR(50), 
  author VARCHAR(50), 
  price INT,
  stock INT,
  pu_id INT,
  FOREIGN KEY (pub_id )
  REFERENCES publisher(pub_id)
    );

--2.  Insert all the rows shown above into the Publisher and Book tables.
INSERT INTO publisher
(pub_id, pub_name, city, est_year) VALUES
(1, 'Alo Prokashoni', 'Dhaka', 2005),
(2, 'Nodi Books', 'Rajshahi', 2012),
(3, 'Sagor Press', 'Chittagong', 1998),
(4, 'Pahar Publications', 'Sylhet', NULL);
INSERT INTO book
(book_id, title,author, price,stock,pub_id) VALUES
(201, 'Database Basics', 'Rahim', 450,20,1),
(202, 'Learn SQL',' Sadia', 380, 15, 1),
(203, 'Data Structures', 'Tanvir', 520, NULL ,2),
(204, 'Python for All', 'Sadia', 300, 30, 3),
(205, 'Network Guide', 'Mahin', NULL, 10 ,4),
(206,'Algorithm Design',' Tanvir', 600, 5, 20),
(207,' Web Development',' Nusrat', 350, 25, 3),
(208,' Operating System', 'Rahim', 480, 12, 40;

--3. The price of "Learn SQL" has gone up. Update its price to 400.
UPDATE Book
SET price = 400
WHERE title = 'Learn SQL';

--4.  The shop stops selling books with stock less than 10. Delete those books.
DELETE FROM Book
WHERE stock < 10;

--5. Add a new column language (VARCHAR(20)) to the Book table.
ALTER TABLE Book
ADD language VARCHAR(20);
 
--6. Show the title and price of books that cost more than 400, sorted from highest price to lowest.
SELECT title, price
FROM Book
WHERE price > 400
ORDER BY price DESC;

--7.  Find all books whose title starts with the letter 'D'.
SELECT *
FROM Book
WHERE title LIKE 'D%';

--8. Find the books whose price is between 350 and 480.
SELECT *
FROM Book
WHERE price BETWEEN 350 AND 480;

--9. Find the books published by publisher 1 or 3 (use IN).
SELECT *
FROM Book
WHERE pub_id IN (1, 3);

--10.  Show the top 3 books with the highest stock (leave out books whose stock is NULL).
SELECT *
FROM Book
WHERE stock IS NOT NULL
ORDER BY stock DESC
LIMIT 3;











