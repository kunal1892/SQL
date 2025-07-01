
-- Drop tables if they exist
CREATE DATABASE ONLINE_STORE;
USE ONLINE_STORE;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    dob DATE,
    city VARCHAR(50)
);

-- Data: Customers
INSERT INTO Customers (customer_name, email, dob, city) VALUES
('Amit Sharma', 'amit@example.com', '1992-03-23', 'Delhi'),
('Neha Verma', 'neha@example.com', '1990-05-25', 'Mumbai'),
('Ravi Kumar', 'ravi@example.com', '1995-08-24', 'Pune'),
('Meena Iyer', 'meena@example.com', '2000-11-28', 'Chennai'),
('Sunil Desai', 'sunil@example.com','1998-02-09', 'Bangalore'),
('Priya Menon', 'priya@example.com', '2001-12-12', 'Hyderabad'),
('Alok Mishra', 'alok@example.com', '1996-10-19', 'Delhi'),
('Sneha Reddy', 'sneha@example.com', '2005-10-10', 'Bangalore'),
('Rohan Das', 'rohan@example.com', '1992-04-1', 'Kolkata'),
('Kavita Joshi', 'kavita@example.com', '1995-01-15', 'Mumbai');

-- Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- Insert Sample Data: Products
INSERT INTO Products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 60000, 10),
('Smartphone', 'Electronics', 25000, 20),
('Headphones', 'Electronics', 3000, 50),
('Chair', 'Furniture', 5000, 15),
('Table Lamp', 'Furniture', 1200, 0);

-- Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert Sample Data: Orders
INSERT INTO Orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2023-08-01'),
(1, 3, 2, '2023-08-05'),
(1, 2, 1, '2023-08-03'),
(2, 5, 1, '2023-08-10'),
(3, 4, 4, '2023-08-02'),
(4, 2, 2, '2023-08-11'),
(5, 1, 1, '2023-08-15'),
(5, 5, 3, '2023-08-20'),
(5, 3, 1, '2023-08-22'),
(4, 4, 2, '2023-08-25'),
(6, 1, 1, '2023-08-18'),
(6, 3, 1, '2023-08-20'),
(7, 2, 1, '2023-08-21'),
(7, 5, 2, '2023-08-22'),
(8, 3, 3, '2023-08-23'),
(5, 1, 1, '2023-08-24'),
(5, 4, 3, '2023-08-25'),
(10, 2, 2, '2023-08-26'),
(10, 5, 1, '2023-08-27'),
(8, 1, 1, '2023-08-28');
