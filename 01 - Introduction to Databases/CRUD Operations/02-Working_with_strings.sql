CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE customers (username CHAR(9), full_name VARCHAR(100), email VARCHAR(255));

SHOW tables;
SHOW columns FROM customers;

CREATE TABLE feedback(feedback_id CHAR(8), feedback_type VARCHAR(100), comment TEXT(500));