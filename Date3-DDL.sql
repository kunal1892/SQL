
# DDL : Data Definition Language
/*
-- Used to create, modify and drop the database and its objects
-- The commands of Data Definition Language Deal with 
   how the data should exist in database.
*/

# Commands
-- CREATE : Create Database and Database Objects (Tables, etc)
-- DROP : Drop Database and Database objects
-- ALTER : Change the structure of database table
-- TRUNCATE : Empty table in an Database


/*																																	 
Table: employees												        
Columns:																
emp_id - (PK)															
emp_name - NOT NULL														
hire_date  															    
dept_id -															
+--------+-----------------+-------------+---------+			     
| emp_id | emp_Name   	   | hire_date   | dept_id |        		 
+--------+-----------------+-------------+---------+		    	 
| 1      | John Doe        | 2023-05-01  |	101    |				 
| 2      | Jane Smith      | 2023-05-02  |	102	   |				 
| 3      | Michael Johnson | 2023-05-03  |	101	   |				 				                             
| 4      | David Wilson    | 2023-05-05  |	102    |				      
+--------+-----------------+-------------+---------+  											
*/

# 1. CREATE Command
-- Create a Database

create database if not exists day6;
use day6;

-- Create tables
create table employees(
emp_id int primary key,
emp_name varchar(100),
hire_date date,
dep_id int 
);

-- insert rows 
insert into employees values
(1, 'A', '2023-05-01', 101),
(2, 'B', '2023-05-02', 102),
(3, 'C', '2023-05-03', 101),
(4, 'D', '2023-05-05', 102);



select * from employees;


# 2. ALTER Command : changing the structure of a table
-- Add a new column to the table
ALTER table employees add column email varchar(100);  -- adds at last position

alter table employees add column emp_index int first;  -- add at first position

alter table employees add column age int after emp_name;  -- adds in between columns 

alter table  employees add column emp_id int after emp_index;


-- Remove existing column in the table

alter table employees drop column emp_index;

alter table employees drop column age;

-- Change the data type

desc employees ;

alter table employees modify column emp_name varchar(200);

alter table employees modify column dep_id decimal(10,2);

-- Rename a column

alter table employees change column emp_name ename varchar(200);

-- Rename a table
alter table employees rename to emp_data;

rename table emp_data to employees;

select * from employees;

# 3. DROP Command

create database dummy;
use dummy;

create table table1 (c1 int, c2 int);
create table table2 (c1 int, c2 int);
create table table3 (c1 int, c2 int);

show tables;

-- Drop tabl

drop table table2;

drop table table1, table3;

-- Drop database

drop database dummy;

# 4. TRUNCATE  -- DROP TABLE + CREATE TABLE
 /*
TRUNCATE is a DDL command which deletes or removes all the records 
from the table. This command also removes the space allocated for 
storing the table records.
*/

use day6;
select * from employees;
-- DELETE : delete records from the table (DML)
-- TRUNCATE: delete all records from the table (DDL) -- DROP TABLE + CREATE TABLE
