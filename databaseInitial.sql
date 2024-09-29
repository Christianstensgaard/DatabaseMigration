-- Christian l.s.j 2024
-- containing all database Initial commands --


-- Product table
CREATE TABLE products(
  Id int PRIMARY key AUTO_INCREMENT,
  Name VARCHAR(86) NOT NULL,
  Price DECIMAL(10,2) NOT NULL
);