CREATE DATABASE chinook;
USE chinook;

CREATE TABLE employees(
employee_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
title VARCHAR(30),
reports_to INT,
birth_date DATE,
hire_date DATE,
employee_address VARCHAR(70),
PRIMARY KEY (employee_id)
);

CREATE TABLE customers(
customer_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
company VARCHAR(30),
phone VARCHAR(20),
email VARCHAR(100),
support_id INT,
customer_address VARCHAR(70),
PRIMARY KEY (customer_id),
FOREIGN KEY (support_id) REFERENCES employees(employee_id)
);

CREATE TABLE locations(
location_id INT,
city VARCHAR(30),
country VARCHAR(30),
PRIMARY KEY (location_id)
);

CREATE TABLE artists(
artist_id INT,
artist_name VARCHAR(120),
location_id INT,
PRIMARY KEY (artist_id),
FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE albums(
album_id INT,
title VARCHAR(160),
artist_id INT,
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE tracks(
track_id INT,
track_name VARCHAR(200),
album_id INT,
unit_price DECIMAL,
PRIMARY KEY (track_id),
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE invoices(
invoice_id INT,
customer_id INT,
invoice_date DATE,
billing_address VARCHAR(100),
track_id INT,
PRIMARY KEY (invoice_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);
