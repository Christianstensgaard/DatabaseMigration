-- Christian l.s.j 2024
-- containing all database Initial commands --

-- Categories table
CREATE TABLE Categories (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(86) NOT NULL
);

--Modify Products table
ALTER TABLE Products
  ADD COLUMN category_id INT,
  ADD CONSTRAINT fk_category
    FOREIGN KEY (category_id)
    REFERENCES Categories(Id);

