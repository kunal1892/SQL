--
-- Data Types:	The type of data database can hold/store
-- Specifies the range of values and operations that can be performed on data.

-- Data Types Majorly categorized into-
/* 		1. Numeric  - age: 25, count: 2890, price: 345.65
			-
            1.1 ---- Integer numbers 
            -
            +-------------+----------------------+-------------------------+----------------------+
			| Data Type   | Storage Size (bytes) | Range (signed)          | Range (unsigned)     |
			+=============+======================+=========================+======================+
			| TINYINT     | 1                    | -128 to 127             | 0 to 255  			  |
			+-------------+----------------------+-------------------------+----------------------+
			| SMALLINT    | 2                    | -32,768 to 32,767       | 0 to 65,535          |
			+-------------+----------------------+-------------------------+----------------------+
			| MEDIUMINT   | 3                    | -8,388,608 to 8,388,607 | 0 to 16,777,215      |
			+-------------+----------------------+-------------------------+----------------------+
			| INT         | 4                    | -2^31 to 2^31 - 1       | 2^32 -1              |
			+-------------+----------------------+-------------------------+----------------------+
			| BIGINT      | 8                    | -2^63 to 2^63 - 1       | 2^64 -1			  |
			+-------------+----------------------+-------------------------+----------------------+
            -
            1.2 ---- Decimal numbers 
            -
			+-------------------+----------------------+
			| Data Type         | Storage Size (bytes) |
			+===================+======================+         
			| FLOAT             | 4                    |
			+-------------------+----------------------+
			| DOUBLE            | 8                    |
			+-------------------+----------------------+
			| DECIMAL/NUMERIC   | Variable             |
			+-------------------+----------------------+
            number : 123.45
            FLOAT: 123.45				 				-- 24 DIGITS OF PRECISION
            DOUBLE:	123.45 		 		    			-- 53 DIGITS OF PRECISION
            DECIMAL(M,D):  DECIMAL(10,2)		        -- 65 DIGITS OF PRECISION, 30 DIGITS IN DECIMAL
            
            DECIMAL(5,2)
			- 123.56		- 123.56
            - 12.36			- 12.36
            - 12.365		- 12.37
			- 1234.5		- ERROR
            - 234.5
            
            DECIMAL(M,0)
            
*/
/* 		2. String  -  sequence of characters  - (a-z, 0-9, special symbols - $,%,@,!,..., white space)  
			name: 'aman', email: 'abc@gmail.com', phone no.: '9999988888', '+91-9999988888'
			+------------------------------+-----------------------------------+
			| Data Type                    | Description		               | 'EXCELR'
			+==============================+===================================+
			| CHAR(length) - 255    	   | fixed-length character strings    |  CHAR(10)   :  'E X C E L R _ _ _ _'    
			+------------------------------+-----------------------------------+
			| VARCHAR(max. length) - 65,535| variable length character strings |  VARCHAR(80):  'E X C E L R'         
			+------------------------------+-----------------------------------+
*/
/* 		3. Date and Time  -

		+-------------+-----------------------+--------------------------------------------------------------+
		| Data Type   | Format				  | Range 				                                         |
		+=============+=======================+==============================================================+
		| DATE	      | ‘YYYY-MM-DD’ 		  | '1000-01-01' to '9999-12-31'								 |
        +-------------+-----------------------+--------------------------------------------------------------+
		| TIME	      | 'hh:mm:ss[.fraction]' | '-838:59:59.000000' to '838:59:59.000000'					 |
        +-------------+-----------------------+--------------------------------------------------------------+
		| DATETIME    | ‘YYYY-MM-DD HH:MM:SS’ | '1000-01-01 00:00:00.000000' to '9999-12-31 23:59:59.999999' |
        +-------------+-----------------------+--------------------------------------------------------------+
		| TIMESTAMP   | ‘YYYY-MM-DD HH:MM:SS’ | '1970-01-01 00:00:01.000000' to '2038-01-19 03:14:07.999999  |
        +-------------+-----------------------+--------------------------------------------------------------+
        | YEAR		  | 'YYYY'	yyyy		  | 1901 to 2155 (numbers or string)							 |
        +-------------+-----------------------+--------------------------------------------------------------+
*/        



/*  Examples 1: 
					Table: products				Data:
					+-----------+---------------+---------+--------------+
					|product_id | product_name  | price   | release_date |
					+-----------+---------------+---------+--------------+
					| 1         | T-shirt       | 5.00    | 2023-05-01   |
					| 2         | BookShelf     | 19.34   | 2023-05-02   |
					+-----------+---------------+---------+--------------+                                      */
                    
   -- create a database                  
create database Day2;   
use day2;  -- Select the database to work on 

-- create table
create table Products (
    product_id INT primary key,
    product_name varchar (100),
    price decimal(10,2),
     release_date date
);                 
                    
-- show data from table
select * from products ;

-- insert row into table 
insert into products value(1,'T-shirt',5.00,'2023-5-1');
insert into products value(2,'Bookself',19.34,'2023-5-2');



/*  Examples 2: 
				    Table: WebsiteVisits          Data:
					+------------+-----------------+---------------------+---------------------+
					| visitor_id | visitor_name    | visited_page        | visit_time          |
					+------------+-----------------+---------------------+---------------------+
					| 1          | John Doe        | Homepage            | 2023-05-01 09:15:00 |
					| 2          | Jane Smith      | Products Page       | 2023-05-02 14:30:00 |
					| 3          | Michael Johnson | About Us            | 2023-05-03 11:45:00 |
					| 4          | Emily Brown     | Contact Page        | 2023-05-04 16:20:00 |
					| 5          | David Wilson    | Blog Post           | 2023-05-05 10:00:00 |
					+-----------+-----------------+---------------------+----------------------+
*/

use day2;
 
 create table websitevisit(
 visitor_id int primary key,
 visitor_name varchar(100),
 visited_page varchar(100),
 visit_time datetime
 );
 
 insert into websitevisit values(1,'John Dow','Homepage',now());
 insert into websitevisit values
 (2,'Jane Smith','Emily Brown',now()),
 (3,'Michael Johnson','About Us',now()),
 (4,'Emily Brown','Contact Page',now()),
 (5,'David Wilson','Blog Post',now());
 
 select * from websitevisit;

-- Note:
-- 1. A database server cannot have two databases with the same name
-- 2. A Database cannot have two tables with the same name
-- 3. A Table cannot have two columns with the same name
-- 4. Naming Convention:
--    (a) Table/Database name can consist of only - letters (a-z), underscore(_), dollar sign($), digits(0-9)
--    (b) Table/Database name should begin with either letter or underscore





















