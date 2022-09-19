CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE devices (device_id INT, device_name VARCHAR(50), price DECIMAL);

SHOW tables;
SHOW columns FROM devices;

CREATE TABLE stock (device_id INT, quantity INT, cost DECIMAL);