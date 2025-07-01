 # Joins: Retrieve data from two more more table

-- Steps:
-- 1. Specify the joining tables in the FROM Clause, and JOIN type -
-- 2. Specify the JOIN condition - common column / conditional expression
-- 3. Filter rows/ Specify columns/ Order the rows/ LIMIT the resulting rows. 
-- ---------------------------------------------------------------------------------------------------------------------
# Types of Joins
-- 1. Inner Join: Returns records that have matching values in both tables
-- 2. Left Outer Join/ Left Join: Returns all records from the left table, and the matched records from the right table
-- 3. Right Outer Join/ Right Join: Returns all records from the right table, and the matched records from the left table
-- 4. Full Outer join: returns all records from both the tables matching or not
-- 5. Cross Join: multiplies/ matches every record from left table to every record from right table
-- 6. Self Join: tables joined to themselves

# Syntax:
/*
SELECT column1, column2, ....,columnN
FROM left_table JOIN right_table ON <join_condition>
*/
-- Join Condition: Condition on which JOIN is defined

USE classicmodels;
# Problem Statements
/**/
-- 1. GET employeeNumber, employee name, jobTitle and location (country) of working 

select employeenumber, concat(firstname,' ', lastname) as empname, jobtitle, country
from employees e join offices using (officecode);

-- 2. get employeeNumber, emp full name, email, phone, city, country

select employeenumber, concat(firstname,' ',lastname) as empname, email,phone,city,country
from employees e join offices o using (officecode);

-- 3. get above details for employees working in USA and France

select employeenumber, concat(firstname,' ',lastname) as empname, email,phone,city,country
from employees e join offices o using (officecode)
where country in ('usa','france');

-- 4. get count of employees working per country

select country, count(employeenumber) as emp_count
from offices o join employees e using (officecode)
group by country;
 
 -- top 3 countires with most no of employees 
 
 select country, count(employeenumber) as emp_count
from offices o join employees e using (officecode)
group by country
order by emp_count desc 
limit 3;
 
 -- conutries with emp count > 4
 
 select country, count(employeenumber) as emp_count
from offices o join employees e using (officecode)
group by country
having emp_count > 4;
 
-- 5. Query Customers (customerNumber, customerName, phone, ordernumber, status ) 
-- whose orders (orderNumber) are either Disputed or On Hold - (status).

select customernumber, customername, phone, ordernumber, status 
from customers c join orders o using (customernumber)
where status in ('disputed', 'on hold');

-- 6. Display customers (customerNumber, customerName) and total orders placed by each customer, if any.

select customerNumber, customerName, count(ordernumber) as order_placed
from customers c left join orders o using (customernumber)
group by customerNumber, customerName;

-- 7. Display customers (customerNumber, customerName) who haven't placed any orders.

select customerNumber, customerName, count(ordernumber) as order_placed
from customers c left join orders o using (customernumber)
group by customerNumber, customerName
having order_Placed = 0;

-- 8. Show customers with their total order count, excluding those who haven't placed any orders.

select customerNumber, customerName, count(ordernumber) as order_placed
from customers c left join orders o using (customernumber)
group by customerNumber, customerName
having order_Placed = 0;

select customerNumber, customerName, count(ordernumber) as order_placed
from customers c inner join orders o using (customernumber)
group by customerNumber, customerName;

-- 9. Display TOP 5 customers (customerNumber, customerName) by total no. of orders placed

select customerNumber, customerName, count(ordernumber) as order_placed
from customers c inner join orders o using (customernumber)
group by customerNumber, customerName
order by order_placed desc
limit 5;

-- 10. Retrieve the top 5 customers who made the highest total purchases from the orders table.
-- total purchase = SUM(quantityOrdered * priceEach)

select customernumber, customername, sum(quantityOrdered * priceEach) as total_purchased
from customers c
join orders o using (customernumber)
join orderdetails od using (ordernumber)
group by customernumber, customername
order by total_purchased desc
limit 5;

-- 11. Query Country names and their respective average sales, order the results by avg. sales from highest to lowest 
--  sales = quantityOrdered * priceEach

select country,
truncate(avg(quantityOrdered * priceEach),2) as avg_sales
from customers c
join orders o using (customernumber)
join orderdetails using (ordernumber)
group by country
order by avg_sales desc;

# Self Join

use day3;

-- 12. Retrieve all employees (emp_id, emp_name) and their respective managers (mgr_id, mgr_name), if any.

select
emp.EMP_ID,
emp.FIRST_NAME AS EMP_NAME,
emp.MGR_ID,
mgr.FIRST_NAME as MGR_NAME
from myemp emp left join myemp mgr on emp.MGR_ID = mgr.EMP_ID;

-- 13. Find names and salaries of employees who earn more than their managers

select
emp.EMP_ID,
emp.FIRST_NAME AS EMP_NAME,
emp.SALARY as EMP_SALARY,
emp.MGR_ID,
mgr.FIRST_NAME as MGR_NAME,
mgr.SALARY as MGE_SALARY
from myemp emp left join myemp mgr on emp.MGR_ID = mgr.EMP_ID
where emp.SALARY > mgr.SALARY;


-- Note : we can only use existing columns in the where clause 
-- no alias, no derived columns, no aggregated columns

# Homework
-- 1. write a query to list the employees (employeeNumber, employeeName) along with their work location (state, city)
-- 2. 
/*
Retrieve the total sales amount for each state, 
and categorize the states as-
'High': total sales > 1000000
'Medium': total sales > 500000 
'Low': Otherwise
*/
-- 3. 
/*																						
Retrieve 
- the total sales amount for each productline (total_sales = quantityOrdered * priceEach) and 
- the number of distinct customers who purchased from that product line.
*/
-- 4. Calculate the total quantity sold and the revenue generated for each product (productCode , productName).
-- total quantity sold = SUM(quantityOrdered) 
-- total revenue generated = SUM(quantityOrdered * priceEach)

-- 5. Display Country wise list of customers with their total purchase and no. of orders placed
-- total purchase = SUM(quantityOrdered * priceEach)


































































--  				Table:  customers										Table: orders
					+----------------------------------------+				+------------+--------------+------------+
					| CustomerID | CustomerName | City       |				| OrderID    | OrderDate    | CustomerID |
					+----------------------------------------+				+------------+--------------+------------+
					| 1          | John Smith   | New York   |				| 1          | 2022-07-10   | 1          |
					| 2          | Emma Johnson | London     |				| 2          | 2022-08-05   | 2          |
					| 3          | Alex Brown   | Paris      |				| 3          | 2022-09-20   | 1          |
					+----------------------------------------+				+------------+--------------+------------+;

-- ------------------------------------------------------------------------------------------------------------------------














