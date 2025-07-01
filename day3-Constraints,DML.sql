# SQL Constraints -- RULES/LIMITATIONS
-- Specifies rules for the data that goes into table.
-- Can be Column level or Table level.
-- CAN be defined at table creation or/and after table creation

# Types of Constraints
-- 1. Entity Intigrity Constraints		: NOT NULL	 				
-- 2. Domain Integrity ConstrainTs		: CHECK | DEFAULT 			
-- 3. Key Intigrity Constraints			: UNIQUE | PRIMARY KEY		
-- 4. Refrential Integrity Constraints	: FOREIGN KEY


-- NOT NULL		--> Ensures No NULL values in column
-- UNIQUE		--> Ensures no duplicate column values     phone_no, email    
-- CHECK 		--> Specifies conditon for input values	   CHECK(age >= 18) 
-- DEAFULT		--> Default value of the specified column   DEFAULT 18 |DEFAULT 'STRING' | DEFAULT '2023-06-26'
-- PRIMARY KEY	--> Uniquely identifies each record  (UNIQUE + NOT NULL)
-- FOREIGN KEY	--> Ensures data consistency in database tables

# SYNTAX
/*
CREATE TABLE table_name (
	column_name0 data_type PRIMARY KEY,
	column_name1 data_type NOT NULL UNIQUE,
	column_name2 data_type DEFAULT 18,
    column_name3 data_type UNIQUE,
    column_name4 data_type CHECK(age >= 16)
);
*/

-- Create tables
/*
																	 
Table: departments
+---------+----------+-----------+-----------+
| dept_id | dept_name| location  | emp_count |
+---------+----------+-----------+-----------+
| 101     | A        | Pune      | 100		 |
| 102     | B        |           | 150		 |
| 103     | C        | Chennai   | 170		 |
| 104     | E        | Banglore  | 122		 |
| 105     | F        | Mumabi    | 145		 |
| 106     | G        | Mumbai    | 90		 |
| 107     | H        | Pune      | 148		 |
| 108     | I        | Banglore  | 200		 |
| 109     | J        | Banglore  | 75		 |
| 110     | K        | Chennai   | 80		 |
+---------+----------+-----------+-----------+	

(103, "C", "Chennai", 170),
(104, "E", "Banglore", 122),
(105, "F", "Mumabi",  145),
(106 ,"G", "Mumbai", 90),
(107, "H", "Pune", 148),
(108, "I", "Banglore", 200),
(109, "J", "Banglore", 75),
(110, "K", "Chennai" , 80);			      ^                        

*/
-- Table: departments
-- Columns:
-- dept_id  - (PK)
-- dept_name  - (NOT NULL, UNIQUE)
-- location - (DEFAULT - MUMBAI)
-- emp_count - (5-200)

use day6;
create table deparments (
dept_id int primary key,
dept_name varchar(100) not null unique,
location varchar(100) default 'Mumbai',
emp_count int check(emp_count between 5 and 200)
);

desc deparments;

-- 1) INSERT command : to insert records into the table

insert into deparments values (101, 'A', 'pune',100);
insert into deparments values (101, 'A',  'pune', 100);
insert into deparments values (null, 'A', 'pune', 100);
insert into deparments values (102, 'A', 'pune', 100);
insert into deparments values (102, null, 'pune', 100);
insert into deparments (dept_id, dept_name, emp_count) values (102, 'B', 100);
insert into deparments values (103, 'C', 'pune', 300);
select * from deparments;

-- 2) UPDATE command : to update one or more values in a table
-- update single value in a record
-- multiple values in a record
-- update multiple records

-- 3) DELETE Command : delete records from the table

-- Note: you can delete one or more records from a table by specifying appropriate WHERE condition
--       if you dont specify WHERE clause, all the records will be deleted







/*
(103, "C", "Chennai", 170)
(104, "E", "Banglore", 122)
(105, "F", "Mumabi",  145)
(106 ,"G", "Mumbai", 90)
(107, "H", "Pune", 148)
(108, "I", "Banglore", 200)
(109, "J", "Banglore", 75)
(110, "K", "Chennai" , 80)
*/































































































