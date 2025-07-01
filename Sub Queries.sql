# Subquery
/*
-- A query nested/written within another query or subquery
-- Must be enclosed in parenthesis
-- Inner query: Subquery 	Outer query: Containing query
*/
USE classicmodels;
SELECT * FROM customers LIMIT 10;   -- RETRUN: table (multiple columns & multiple rows)
SELECT customerNumber FROM customers LIMIT 10;  -- RETURN : list of values (single column & multiple rows)
SELECT customerName FROM customers WHERE customerNumber = 112;  -- return: single value (single column & single row)

-- 

# Independent Subqueries: 
/*
- executed as standlone subquery.
- inner query is executed first and then outer query
*/
USE classicmodels;
# with SELECT 
-- 1. % OF TOTAL customers from each country
-- find total customers in each country
-- % OF TOTAL  = count/total

select
country,
count(customernumber) as cust_count,
count(customernumber) / (select count(customernumber) from customers) * 100 as `% total`
from customers
group by country;


select count(customernumber) from customers;

# with WHERE Clause
-- > MySQL subquery with comparison operators
-- 2.(a) The customers with payments greater than average payment.

select customernumber, paymentdate, amount
from payments 
where amount > (select avg(amount) from payments);

select customernumber, paymentdate, amount
from payments 
where amount > (select avg(amount) from payments);

select avg(amount) from payments;

-- 2.(b) display customer name and country for customer with max payment amount

-- max payment amount
select max(amount) from payments;

-- customernumber with max payment
select customernumber from payments
where amount = (select max(amount) from payments);

-- customername & country of customer with max payment
select customername, country from customers
where customernumber = (select customernumber from payments
                         where amount = (select max(amount) from payments)); 

-- > MySQL subquery with IN and NOT IN operators
-- 3.(a) Find the customers who have not placed any orders

select customernumber, customername, phone, country
from customers
where customernumber not in (select distinct customernumber from orders);

select customernumber, customername, phone, country
from customers c left join orders o using (customernumber)
where ordernumber is null;

select customername, country from customers
where customernumber =  -- customer with max payment


-- 3.(b) Find the customers who have placed orders
select customernumber, customername, phone, country
from customers
where customernumber  in (select distinct customernumber from orders);

select customernumber, customername, phone, country
from customers c left join orders o using (customernumber)
where ordernumber is not null;

select distinct customernumber from orders;

# with FROM clause
-- top N subcategories of every category
-- bottom N subcategories of every category (window Function + Sub-Query)
USE day3;
-- 4.a) Find TOP 3 paid employees from every department
-- 4.(b) display employee with second highest salary from every department
-- top 3 customers from each country by creditlimit
-- top 5 products by buyPrice from each productLine
-- 4.b) Find TOP 3 selling products from each productline

-- 1) quantity sold for each product
-- 2) rank the product by quantity sold in each productline
-- 3) filter rank to select only top 3


select * 
from (
	  select *, dense_rank() over (partition by productline order by total_quantity desc) as rn
       from (
             select
                   productline, productname, sum(quantityOrdered) as total_quantity
       from products join orderdetails using (productcode)
       group by productLine, productName) t1) t2
where rn <= 3;       


-- 5.a) Find % GROWTH per year

select order_year,
      concat(truncate(total_sales / 100000,2), 'M') as sales,
      ifnull(concat(round(`% growth`,2), '%'), '-') as `% growth`
from (
	select *,
		lag(total_sales,1) over() as py_sales,
		(total_sales - lag(total_sales,1) over ()) / lag(total_sales,1) over() * 100 as `% growth`
	from(    
		 select
				year(orderdate) as order_year,
				sum(quantityordered * priceeach) as total_sales
		  from orders join orderdetails using (ordernumber)
		  group by order_year) t1) t2;

-- 5.b) Find RUNNING TOTAL per year, quarter



USE classicmodels;
# Coorelated Subqueries: 
/*
-  A correlated subquery is a subquery that uses the data from the outer query.
-  A correlated subquery is evaluated once for each row in the outer query.
*/
-- 	6. Select products whose buy prices are greater than the average buy price of all products in the product line.


/*
Classic Cars	64.446316
Motorcycles	50.685385
Planes	49.629167
Ships	47.007778
Trains	43.923333
Trucks and Buses	56.329091
Vintage Cars	46.066250
*/

-- 7.a) find customers with no orders placed					
-- 7.b) find customers with orders placed

-- H/W:
-- 1) % of total quantity (quantityOrdered) and revenure (quantityOrdered * priceEach) for each productLine
-- 2) TOP 2 payments by each customer
-- 6) Find % GROWTH per year and month







