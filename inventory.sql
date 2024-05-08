/*
This file demonstrates sql commands using MySQL to create a database named 'inventory':
Tables:
- categories: a table with columns id, name, description
- products: a table with columns id, name,  price, created_at, updated_at
Assumption: 
- MySQL version 8 or higher is installed on the system.
- User is logged in to MySQL server and has the necessary permissions to create a database and table.
*/

-- If a database named 'inventory' already exists, drop it
DROP DATABASE IF EXISTS inventory;

-- Create a database named 'inventory'
CREATE DATABASE inventory;

-- Use the database
USE inventory;

/*
Generate a table named 'categories' with the following columns:
- id: an integer that is the primary key
- name: a string that is not null
- description: a string that is not null
*/
CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT NOT NULL
);


/*
Generate a table named 'products' with the following columns:
- id: an integer that is the primary key
- name: a string that is not null
- price: a decimal that is not null
- created_at: a timestamp that is not null
- updated_at: a timestamp that is not null
*/
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*
Create a stored procedure named 'add_product' that inserts a new product into the 'products' table.
*/
DELIMITER //
CREATE PROCEDURE add_product(IN product_name VARCHAR(100), IN product_price DECIMAL(10, 2))
BEGIN
  INSERT INTO products (name, price) VALUES (product_name, product_price);
END //

DELIMITER ;

-- Insert data into the table
INSERT INTO products (name, price) VALUES ('Laptop', 999.99);
INSERT INTO products (name, price) VALUES ('Mouse', 19.99);
INSERT INTO products (name, price) VALUES ('Keyboard', 49.99);
INSERT INTO products (name, price) VALUES ('Monitor', 129.99);

-- select all data from the table
SELECT * FROM products;

-- generate a report of the total number of products and the total value of all products
SELECT COUNT(*) AS total_products, SUM(price) AS total_value FROM products;

