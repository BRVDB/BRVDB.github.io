

DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id INTEGER (10) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR (250) NOT NULL,
	department_name VARCHAR (250),
	price DECIMAL(10,2),
	stock_quantity INTEGER (10),
	product_sales DECIMAL (10,2) DEFAULT 0.00,
	PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Ham", "Grocery", 998.65, 6, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Shaq Poster", "Miscellaneous", 345.67, 200, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Switchblade", "Tools", 1.00, 5, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Mini House", "Home", 999.99, 1, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Puppy", "Pets", 249.99, 55, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Rump Roast", "Grocery", 15.99, 500, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Inversion Table", "Health", 333.99, 4, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Jet Engine", "Automotive", 65.99, 6, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Toilet Seat", "Home", 998.65, 6, 0.00);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Lawn Mower", "Tools", 4.5, 20, 0.00);

SELECT * FROM bamazon_db.products;