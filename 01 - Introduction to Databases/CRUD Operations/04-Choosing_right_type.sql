CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE invoice (customer_name VARCHAR(50), order_date DATE, quantity INT, total DECIMAL);

SHOW tables;
SHOW columns FROM invoice;

CREATE TABLE customer_contact (customer_name VARCHAR(50), account_number INT, phone INT, email VARCHAR);