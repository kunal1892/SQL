CREATE DATABASE day7;
USE day7;

CREATE TABLE departments (
	id INT PRIMARY KEY ,
    deptName VARCHAR(10),
    location VARCHAR(15)
);
INSERT INTO departments 
VALUES 
(101, 'A', 'Pune'),
(102, 'B', 'Mumbai');
-- -------------------------------------------------------------
CREATE TABLE employees (
	employeeId INT PRIMARY KEY,
    employeeName VARCHAR(15),
    hireDate DATE,
    dept_id INT,
    -- DEFINE FOREIGN KEY
   foreign key (dept_id) references departments (id)
);

DROP TABLE employees;

INSERT INTO employees
VALUES 
(1, 'John Doe', '2023-05-01', 101),
(2, 'Jane Smith', '2023-05-02', 102),
(3, 'Michael Johnson', '2023-05-03', 102),
(4, 'Emily Brown', '2023-05-04', 101),
(5, 'David Wilson', '2023-05-05', 102);