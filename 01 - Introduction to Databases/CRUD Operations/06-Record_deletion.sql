CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE customers (customer_id INT, name VARCHAR (50), address VARCHAR(100));

INSERT INTO `customers` (`customer_id`, `name`, `address`) VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');

DELETE FROM customers WHERE customer_id = 3;
DELETE FROM customers WHERE customer_id = 5;