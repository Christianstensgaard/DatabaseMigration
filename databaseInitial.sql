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


-- Product Ratings
CREATE TABLE ProductRatings (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductId INT NOT NULL,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    CONSTRAINT fk_product
        FOREIGN KEY (ProductId)
        REFERENCES Products(Id)
);


-- Product table
CREATE TABLE products(
  Id int PRIMARY key AUTO_INCREMENT,
  Name VARCHAR(86) NOT NULL,
  Price DECIMAL(10,2) NOT NULL
);
