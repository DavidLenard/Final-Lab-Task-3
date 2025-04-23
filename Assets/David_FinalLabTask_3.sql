CREATE DATABASE sidb;
SHOW DATABASES;

-- Task 1 --
CREATE TABLE products_tbl (
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price DECIMAL(10, 2)
);

DESCRIBE products_tbl;

-- Task 2 --
ALTER TABLE products_tbl
ADD CONSTRAINT chk_price_positive CHECK (price > 0);

-- Task 3 --
INSERT INTO products_tbl (product_name, price) VALUES
('Laptop', 999.99),
('Smartphone', 599.99),
('Tablet', 299.99),
('Keyboard', 19.99),
('Mouse', 14.99),
('Desk Lamp', 24.99),
('Speakers', 9.99);

-- Task 4 -- 
ALTER TABLE products_tbl
MODIFY COLUMN product_name VARCHAR(120) NOT NULL;

SELECT * FROM products_tbl;