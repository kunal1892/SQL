# Functions
/*
- Stored program that returns a single value.
- Accepts i/p value 		--> perform computations/ data manipulations 	--> returns a single value
- Can be
	1. DETERMINISTIC		--> returns same result for the same set of input parameters
    2. NON-DETERMINISTIC	--> returns different result for the same set of input parameters
*/

# Syntax
/*
DELIMITER //
CREATE FUNCTION fun_name(par1 d_type, ...)
RETURNS data_type
[NOT] DETERMINISTIC
BEGIN
		-- SQL statements
END //
DELIMITER ;
*/
USE day3;
SELECT * FROM myemp;

select emp_id, hire_date, job_id, year(now()) - year(hire_date) as exp from myemp;

-- 1. Create a function that calculates employees expirience

delimiter //
create function experience(hdate date)
returns int
deterministic
begin
      declare exp int;
      set exp = year(now()) - year(hdate);
      return exp;
 end //
 delimiter ;

select experience ('2020-05-25');

select emp_id, upper(first_name), year(now()) - year(hire_date) as exp from myemp;

select emp_id, experience(hire_date) as exp from myemp;

-- 2. Create a function that will return employee pay level ( High: salary > 15000, low otherwise)

select 
	   emp_id, salary,
       case
            when salary > 15000 then 'high'
            else 'low'
       end as pay_level
 from myemp;
 
 select emp_id, salary, pay_level(salary ) as `pay level` from myemp;
 
-- 3. print the following pattern using functions
-- *
-- *  *
-- *  *  *
-- *  *  *  *
-- *  *  *  *  *



# Conditional Statement: execute statement(s) if and only if the specified condition is satisfied
/*

IF condition_
	THEN - statement(s);
ELSE - statement(s);
END IF;

*/

# LOOP statement: to execute a block of statements repeatedly based on a condition.
/*
label: LOOP
	...
	IF condition_
    THEN LEAVE label;
	...t
END LOOP;
*/

-- H/W: 
-- 1. creating function to get employee name (firstName + lastName) 
 
 select emp_id, fullname(first_name, last_name) from myemp;
 
 
 use classicmodels;
 select * from classicmodels;
 select  emp_id,  credit_level() from creditlevel;
 
 
 
 
 
 
 
 








