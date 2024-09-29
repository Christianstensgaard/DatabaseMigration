ALTER TABLE Products DROP FOREIGN KEY fk_category;
ALTER TABLE Products DROP COLUMN category_id;
DROP TABLE IF EXISTS Categories;