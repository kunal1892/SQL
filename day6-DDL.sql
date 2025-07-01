
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
CREATE DATABASE IF NOT EXISTS day6;
USE day6;

-- Create tables


# 2. ALTER Command : changing the structure of a table
-- Add a new column to the table
-- Remove existing column in the table
-- Change the data type
-- Rename a column
-- Rename a table

# 3. DROP Command
-- Drop tabl
-- Drop database

# 4. TRUNCATE  -- DROP TABLE + CREATE TABLE
 /*
TRUNCATE is a DDL command which deletes or removes all the records 
from the table. This command also removes the space allocated for 
storing the table records.
*/

-- DELETE : delete records from the table (DML)
-- TRUNCATE: delete all records from the table (DDL) -- DROP TABLE + CREATE TABLE
