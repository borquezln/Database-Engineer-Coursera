CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE address (id int NOT NULL,  street VARCHAR(255), postcode VARCHAR(10), town VARCHAR(30) DEFAULT "Harrow");

SHOW tables;
SHOW columns FROM address;

DROP TABLE address;
CREATE TABLE Address (id int NOT NULL,  street VARCHAR(255), postcode VARCHAR(10) DEFAULT "HA97DE", town VARCHAR(30) DEFAULT "Harrow");