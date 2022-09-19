CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE customers (customer_id INT, name VARCHAR (50), address VARCHAR(100));

SHOW tables;
SHOW columns FROM customers;

INSERT INTO customers(customer_id, name, address) VALUES (1, "Jack", "115 Old street Belfast");
SELECT * FROM customers;
INSERT INTO customers(customer_id, name, address) VALUES (2, "James", "24 Carlson Rd London");