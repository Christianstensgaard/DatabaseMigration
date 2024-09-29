-- Christian l.s.j 2024
-- containing all database Initial commands --


-- Product Ratings
CREATE TABLE ProductRatings (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductId INT NOT NULL,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    CONSTRAINT fk_product
        FOREIGN KEY (ProductId)
        REFERENCES Products(Id)
);

