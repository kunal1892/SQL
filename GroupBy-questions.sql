
# Aggregate Functions
-- 1. Write a query to find total no. employees
use day3;

select count(emp_id) from myemp;

-- 2. Write a query to list JOB_IDs

select count(distinct job_id) from myemp;

-- 3. Write a query to get the total salary payable to employees.

select sum(salary) from myemp;

-- 4. Write a query to get the maximum salary of an employee working as a Programmer. 

select max(salary) from myemp
where job_id = 'it_prog';

-- 5. get total salary of employees working in dep_id 50
select sum(salary) from myemp
where dep_id = 50;

-- 6. Write a query to get the maximum salary of an employee working as a CLERK.

select max(salary) from myemp
where job_id like '%clerk';

# Group By single column
-- 7. Calculate the Number of Employees in Each Job Profile Category

select job_id, count(emp_id) as emp_count
from myemp
group by job_id
order by emp_count;

-- 8. Total Salary distributed to each department.

select dep_id, count(salary) as total_salary
from myemp
group by dep_id
order by dep_id;

-- 9. Write query to find min, max and average salary of employees, GROUP BY HIRE_YEAR

select
year(hire_date) as hire_year,
count(emp_id), min(salary), max(salary), avg(salary)
from myemp
group by hire_date
order by hire_date;

-- total of employees working in each department
select dep_id, count(Emp_id) as total_employees
from myemp
group by dep_id
order by dep_id;


# Group By multiple columns
-- 10. Write query to find average and highest salary of employees per year and quarter

select 
year(hire_date) as hire_year,
quarter(hire_date) as hire_quater,
avg(salary),
max(salary)
from myemp
group by hire_year, hire_quater;

-- 11. Find total employees and total salary from each dep_id and job_id
select 
dep_id,
job_id,
sum(salary) as total_salary,
count(emp_id) as total_employees
from myemp
group by dep_id, job_id;

-- 12. Find total employees hired by Year and dep_id
select 
year(hire_date) as hire_year,
dep_id,
count(emp_id) as total_emp
from myemp
group by hire_year, dep_id;

# Filtering Summary Tables
-- 13. Write a query to get the average salary for each job ID excluding programmer

select 
job_id, avg(salary)
from myemp
where job_id <> 'it_prog'
group by job_id;

select job_id, avg(salary)
from myemp
where job_id like '%clerk'
group by job_id;

select job_id, avg(salary)
from myemp
where job_id in ('sa_man', 'sa_rep')
group by job_id;


-- 14. Write a query to get the average salary for all departments employing more than 10 employees.

select dep_id, count(emp_id), avg(salary)
from myemp
group by dep_id
having  count(emp_id) > 10;

select
dep_id,
count(emp_id) as emp_count,
avg(salary) as avg_salary
from myemp
group by dep_id
having emp_count > 10;

-- 15. Find Departments with total salary greater than 1L.
select 
dep_id,
sum(salary) as sal_avg
from myemp
group by dep_id
having sal_avg > 100000;

-- 16. Write a query to get the job ID and maximum salary of the employees hired after year 2000 
--     where maximum salary is greater than or equal to $4000.

select job_id, 
max(salary) as max_salary
from myemp
where year(hire_date) > 2000
group by job_id 
having max_salary >= 4000;

-- 17. AVG salary & avg. commission_pct of job_ids receiving commission

select 
job_id,
avg(salary),
avg(commission_pct)
from myemp
where commission_pct > 0 
group by job_id;


# Advanced
-- 18. top 2 departments with highest no. of employees
select
dep_id, count(emp_id) as emp_count
from myemp
group by dep_id 
order by emp_count desc
limit 2;

-- 19. top 5 job_ids with highest average salary
select 
job_id, 
avg(salary) as Avg_sal
from myemp
group by job_id
order by avg_sal desc
limit 5;

-- 20. top 5 departments with highest employee to manager ratio

select
dep_id,
count(emp_id) as emp_count,
count(distinct mgr_id) as mgr_count,
count(emp_id) / count(distinct mgr_id) as `emp-to-mgr ratio`
from myemp
group by dep_id
order by `emp-to-mgr ratio` desc
limit 5;
-- --------------------------------------------------------------------------------------------------------
use classicmodels;
-- 1. Write a query to find total no. of customers from Norway and Sweden.
select country, 
count(customers)
from classicmodels
having country = 'norway' & 'sweden';

-- 2. Write a query to find total no. of customers WITH credit limit > 1000 from Norway and Sweden.
-- 3. Display countries with customer count greater than 10
-- 4. Find total credit limit and highest credit limit for each sales representative,
--    and sort the results in descending order of the highest credit limit.
-- 5. Write a query to find top 3 countries with highest no. of customers


# Homework
-- 1. Write a query to find EMPLOYEE_COUNT and MANAGER_COUNT of employees working in each department
-- 2. Write a query to get the department ID and the total salary payable in each department.
-- 3. Calculate average credit limit of customers in each country
--     and display only those results where the where the average credit limit is greater than 50000
-- 4. Write a query to find average salary and total no. of employees working in the department - 50 and 80
-- 5. Write a query to find top 3 job profiles with highest salary payable.
-- 6. Write a query to get the difference between the highest and lowest salaries.

-- NOTE:
-- GROUP BY Columns : columns specified in GROUP BY clause
-- AGGREGATED Columns : columns to which aggreate functions are applied
-- filter Columns : columns on which filter condition is defined
-- Use HAVING : filter column is AGGREGATED or derived column in the select
-- WHERE  : filter column is existing column of a Table




