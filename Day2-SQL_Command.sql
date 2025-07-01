		
--      SQL Commands																                                                                                                               
        |																			
/*		├── 1. Data Definition Language (DDL) 		-- Deals with the structure of database & objects (table etc.)	
		│   ├── CREATE																
		│   ├── ALTER																
		│   ├── DROP																	
		│   └── TRUNCATE 			                  																			 				*/													
/*		├── 2. Data Manipulation Language (DML) 	-- Deals with the data within the tables			
		│   ├── INSERT	                                                    																	
		│   ├── UPDATE	
		│   └── DELETE																															*/
/*		├── 3. Data Query Language (DQL)			-- Retrive the data from the database 														*/																
/*		|  └──  SELECT																																		*/
/*		├── 4. Data Control Language (DCL)			-- Used by DBA: database administrator										 
		│   ├── GRANT
		│   ├── REVOKE
		│   └── DENY																															*/
/*		└── 5. Transaction Control Language (TCL) 	-- Create transactions in SQL
			├── TRANSACTION
			├── COMMIT 
			├── ROLLBACK 
			└── SAVEPOINT																														*/


Database: Organized Collection of related data
Relational Database : Collection of data tables related to each other


# Syntax
/*   +--------------------------------+
	 |	SELECT column1[, column2…]	  |   		 --> SELECT: Specify the columns to retrieve.
	 |	FROM table_name 			  |		     --> FROM: Specify the table(s) to query.
     |  JOIN table_name ON condn	  |          --> JOINS: joins data of two tables to be operated together
	 |	WHERE filter_condition		  |			 --> WHERE: Apply conditions to filter the rows.
     |  GROUP BY column(s)			  |			 --> GROUP BY: group the records by common column values
     |  HAVING filter_condition		  |			 --> HAVING: Apply conditions to filter the groups.
	 |	ORDER BY column1 [ASC|DESC]	  |	 	   	 --> ORDER BY: Sort the result set based on one or more columns.
	 |	LIMIT [offset,] limit_value;  |			 --> LIMIT: Restrict the number of rows returned.
     +--------------------------------+
	 
*/

    
# Selecting All Data 
# Selecting Specific Columns
# Unique results with: 		 - DISTINCT clause
# Selecting Specific Columns:- Using Alias 
# Selecting derived Columns  - Formulas, String Functions, Date Functions, NULL Functions, etc
# Limiting results with: 	 - LIMIT clause
# Sorting Rows with:  	 	 - ORDER BY [ASC|DESC] Operator 
# Selecting Specific Rows/Filtering: WHERE clause  : COLUMN-NAME OPERATOR DATA-VALUE
-- 1. Comparision Operators  - =, <, <=, >, >= , !=, <>
-- 2. BETWEEN Operator		 - NOT BETWEEN Operator 
-- 3. LIKE Operator			 - NOT LIKE Operator
-- 4. IN Operator			 - NOT IN Operator
-- 5. IS NULL Operator		 - IS NOT NULL Operator
# Combining conditions using AND/ OR Operator	
-- ---------------------------------------------------------------------------------
# Horizontal/Row functions : 
/* apply operations or calculations to data in each row of the table seperately
-- ------------------------
# 1.String Functions
-- 1. CONCAT()		2. UPPER()		3. LOWER()		 	

# 2.Date Functions
-- 1. DATE()		2. TIME()		3. YEAR()		4. MONTH()		5. DAY()
-- 6. WEEKDAY()		7. DAYNAME()	8. MONTHNAME()  9. QUARTER()

# 3.NULL Functions
-- 1. IS NULL/ IS NOT NULL			2. ISNULL()		3.IFNULL()		4. COALESCE()

# 4.Numeric Functions
-- 1. RAND()		2. FLOOR()		3.CEIL()/CEILING()				
-- 3. TRUNCATE()	3. ROUND()																										*/
-- -------------------------------------------------------------------------------------
# Vertical/ Column Functions : 
/* apply operations or calculations to data from multiple rows within same column 
-- -------------------
-- Aggregate Functions   	1.SUM()		2.AVG()		3.MIN()		4.MAX()		5.COUNT()
--
-- Ranking Functions	 	1.ROW_NUMBER()	2.RANK()	3.DENSE_RANK()	4.PERCENT_RANK()		
-- Distribution Functions	1.FIRST_VALUE()	2.LAST_VALUE()		3.NTH_VALUE()
-- 						 	4.NTILE()																									*/
-- --------------------------------------------------------------------------------------
# CASE Statement
--
# Syntax:
/*
	CASE 
		WHEN condition1 THEN expression/category
        WHEN condition2 THEN expression/category
        ...
        ELSE expression/category
	END AS alias
*/		

/*
	CASE column_name 
		WHEN value1 THEN expression/category
        WHEN value2 THEN expression/category
        ...
        ELSE expression/category
	END AS alias
*/
-- ------------------------------------------------------------------------
# GROUP BY 
/*	- Clause used to divide/group rows having common column values due to GROUP BY Clause
	- Allows to apply Aggregate functions to each group 
    - each aggregate function creates a new derived column
    - SELECT Command can only have 1.GROUP BY Columns	2. Aggregate functions
    - Produces a single row for each group in the result set
    
    Use:
    Aggregate data by categories
    e.g., 
    1. Agg. data by time intervals (daily, monthly, etc) to analyse trends and patterns over time
    2. Customer Segmentation: Grouping customers based on their behaviour or demographics
    3. Product Performance: How diff. products are performing in terms of sales, revenue, customer rating, etc.
    4. Geographical Analysis: Grouping the data by geographical trends to study regional trends or variation in data.
*/
-- -----------------------------------------------------------------------
# Windows Funtions
/* Window: Partiton formed by rows with common column values due to PARTITION BY Clause
   Allows to apply Column/Vertical functions to each window called as Windows Functions
   SELECT Command can have any columns from the table
   Retains every row in each window in the result set
   
   Use:
   Ranking Data: Ranking products by sales, employees by performance etc
   Moving Averages: for financial or trend analysis
   Lead & Lag Analysis: Analysing changes in data over time by comparing current and previous values
   Percentiles and Quartiles: To understand data distribution and Identify Outliers
   Top N & Bottom N Analysis: top performing products and bottom performing products etc.
   Cumulative Totals: total sales achieved upto a specific point in time
*/
-- ---------------------------------------------------------------------------------------------------
# Subqueries
/*	

Use:
	Filtering Data: by the conditions defined on derived columns by windows functions
    Calculating Aggregates: Calculating Aggregates of aggregated/windows functions
*/
-- ---------------------------------------------------------------------------------------------------
# Union
/*

Use:


*/
-- Filter Data On:
	-- Non-aggregated columns, Group By Columns : WHERE
    -- Group by Column, Aggregated Columns : HAVING
    -- derived columns by windows functions : Subqueries


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    -- 1. specifying account numbers
    -- 2. specify the amount
    -- 3. verification of account numbers
    -- 4. amount deducted from senders account
    -- 5. amount credited to the receivers account
    -- transaction is sucessfull!
    
    -- put the product into basket/cart
    -- bill is initiated
    -- payment is done
    -- order id placed
    
    
    
    
    
    
    
    
    
    
    
    
    
    

