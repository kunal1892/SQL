# CASE statement
-- Used to execute conditional logic in SQL
-- Can be written in two ways -> 1. applied to one column  2. applied to more than one column
-- Use : with    			  -> 1. SELECT query		2. ORDER BY clause		3. Aggregate Functions

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

#Examples:
/*
- increase salary by 10% for JOB_ID = 'AD_PRES'
- increase salary by 20% for JOB_ID = 'IT_PROG'
- keep salary for other JOB_IDs as it is.
*/

select 
emp_id, job_id, salary,
case
when JOB_ID = 'AD_PRES' then salary * 1.1 
when JOB_ID = 'IT_PROG' then salary * 1.2
else salary 
end as Updated_salary 
from myemp;


/*
- increase salary by 10% for JOB_ID = 'AD_PRES'
- increase salary by 20% for EMP_ID = 104
- keep other salaries as it is.
*/

select 
emp_id, job_id,salary,
case 
when  JOB_ID = 'AD_PRES' then salary * 1.1 
when EMP_ID = 104 then salary * 1.2
else salary 
end as updated_salary 
from myemp;


/*
- display PAY_LEVEL for every employee as
- 'LOW'		: when SALARY is less then 10000 
- 'MEDIUM'	: when SALARY is less than 20000
- 'HIGH'	: when SALARY is greater than or equals to 20000
*/
select 
emp_id, salary,
case 
when salary < 10000 then 'low'
when salary < 20000 then 'medium'
else 'high'
end as `pay level`
from myemp
having `pay level` = 'medium';

/*
Salary Category:
"High salary"	: SALARY is greater than 10k
"Low Salary:	: Otherwise
*/
select 
emp_id, salary,
if(salary > 10000, 'high salary', 'low salary') as `pay level`
from myemp;
/*
Earnings Status:
"High Earner"		: SALARY greater than 10k AND COMMISSION_PCT is greater than 0.1
"Regular Earner"	: Otherwise
*/
select 
emp_id, salary, 
if(salary > 10000 and commission_pct > 0.1, 'high earner', 'reguler earner') as `earning status`
from myemp
having `earning status` = 'high earner';


/*
Commission Category:
"Above 10%"		: COMMISSION_PCT is greater than 0.1
"Below 10%"		: Otherwise
*/
select 
emp_id, commission_pct,
if(commission_pct > 0.1, 'above 10%', 'below 10%') as `commission pay`
from myemp;

-- -----------------------------------------------------------------------------
-- H/W:
-- DATE COLUMN
-- NEW COLUMN : FINANCIAL QUARTER
-- 'FQ1': APRIL - JUNE
-- 'FQ2': JULY - SEP
-- 'FQ3': OCT - DEC
-- 'FQ4': JAN - MAR

-- NEW COLUMN : FINANCIAL MONTH
-- 'FM1': April, 'FM2': May, 'FM3': June, .... , 'FM12': March






	















