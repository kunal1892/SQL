CREATE DATABASE day15;
USE day15;
-- Union Tables
CREATE TABLE stock (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50),
    stock_quantity INT,
    unit_price DECIMAL(10, 2)
);

INSERT INTO stock VALUES
(101, 'Laptop', 'Electronics', 10, 1200.00),
(102, 'Smartphone', 'Electronics', 20, 800.00),
(103, 'Desk Chair', 'Furniture', 5, 150.00),
(104, 'Office Desk', 'Furniture', 8, 250.00),
(105, 'Printer', 'Office Supplies', 15, 100.00);


CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    sale_date DATE,
    quantity_sold INT,
    total_amount DECIMAL(10, 2)
);

INSERT INTO sales VALUES
(201, 101, '2024-01-15', 2, 2400.00),
(202, 102, '2024-02-20', 5, 4000.00),
(203, 103, '2024-03-25', 1, 150.00),
(204, 104, '2024-04-30', 3, 750.00),
(205, 106, '2024-05-05', 2, 200.00);

-- --------------------------------------------------------------------------


