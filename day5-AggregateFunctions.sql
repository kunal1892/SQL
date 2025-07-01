
-- Column Functions: functions applied to set of rows for a single column

# Aggregate Functions
-- Summarize multiple rows into a single value for the entire group, column, or table 

# COUNT(column) 			--> returns total no. of NOT NULL rows in the result set/ NOT NULL values in the column
# SUM(numerical_column)		--> returns addition of values in the column 
# AVG(numerical_column)		--> returns average value (2 + 4 + 5 + 8)/4
# MIN(column)				--> returns minimum value  -- lowest numeric value		| first date	| alphabetically first
# MAX(column)				--> returns maximum value  -- highest numeric value		| last date		| alphabeltically last

-- ------------------------------------------------------------------------------------------------------------------------
use day3;

select sum(salary), avg(salary), min(salary), max(salary), count(salary)
from myemp;

-- Count VS Distinct count 

select 
count(dep_id),            -- Count of NOT NULL values in dep_id column
count(distinct dep_id)    -- count of DISTINCT dep_id from column  
from myemp;

select
count(job_id),
count(distinct job_id)
from myemp;


-- no of rows in table 

select count(*) from myemp;

-- no of NOT NULL & NULL values 
-- Not Null values 
select 
count(*) as row_column,
count(email) as count_of_email
from myemp;

-- NULL values 
select 
count(*) as row_column,
count(email) as count_of_email,
count(*) - count(email) as count_of_null,
sum(isnull(email)) as count_of_null2
from myemp;

-- what % of email column is empty ?
select 
 sum(isnull(email)) / count(*) * 100
 from myemp;
 
 
 















