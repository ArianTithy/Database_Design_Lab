--1
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

