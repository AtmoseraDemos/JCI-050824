/*
This file demonstrates sql commands using MySQL to create a database named 'inventory' and a table named 'products' with some sample data.
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
Generate a table named 'products' with the following columns:
- id: an integer that is the primary key
- name: a string that is not null
- price: a decimal that is not null
*/
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

-- Insert data into the table
INSERT INTO products (name, price) VALUES ('Laptop', 999.99);
INSERT INTO products (name, price) VALUES ('Mouse', 19.99);
INSERT INTO products (name, price) VALUES ('Keyboard', 49.99);
INSERT INTO products (name, price) VALUES ('Monitor', 129.99);

-- select all data from the table
SELECT * FROM products;

