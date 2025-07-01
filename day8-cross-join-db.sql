CREATE DATABASE day8;
USE day8;
-- Cross Join Tables
-- Create Electronics Items Table
CREATE TABLE electronics_items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO electronics_items VALUES
(1, 'Laptop', 50000.00),
(2, 'Mobile', 30000.00),
(3, 'Tablet', 25000.00);

-- Create Accessories Table
CREATE TABLE accessories (
    accessory_id INT PRIMARY KEY,
    accessory_name VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO accessories VALUES
(101, 'Charger', 1500.00),
(102, 'Earphones', 800.00),
(103, 'Mount', 300.00);