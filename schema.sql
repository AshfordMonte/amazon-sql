CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL,
    product_name VARCHAR(100) NULL,
    department_name VARCHAR(100) NULL,
    price DECIMAL(10,4) NULL,
    stock_quantity INT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products
VALUES (1, "Cool Chair", "Furniture", 40, 50),
(2, "High End Computer", "Electronics", 800, 5),
(3, "Handy Flip-Flops", "Clothing", 10, 20),
(4, "Pencils", "Arts and Crafts", 3, 100),
(5, "New Keyboard", "Electronics", 100, 10),
(6, "Guitar", "Music", 250, 5),
(7, "Apple Tree Seeds", "Nature", 10, 1000),
(8, "Case of Toilet Paper", "Utilities", 9, 3),
(9, "Backpack", "Utilities", 25, 20),
(10, "Blue T-Shirt", "Clothing", 10, 30);