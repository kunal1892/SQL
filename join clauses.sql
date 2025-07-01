use classicmodels;

select * from employees;
select * from offices;

select * 
from employees join offices using(officecode);

select employeenumber, email, phone, city 
from employees join offices using(officecode);


select customernumber, city, ordernumber
from customers join orders using(customernumber); 

-- customers (salesrepemployeenumber) -- empolyees (employeesnumber)

select * 
from customers c join employees e on c.salesrepemployeenumber = e.employeenumber ;


-- join customers with payments 

select customernumber, paymentdate,amount 
from customers join payments using(customernumber);

-- jion product with product line 

select productname, textdescription
from productlines join products using(productline);

-- orders with orderdetails

select *
from orderdetails join orders using(ordernumber);


-- customers(customersnumber)-- orders(ordernumber)-- orderdetails

select * 
from customers c
join orders o using(customernumber)
join orderdetails od using(ordernumber);

-- order(ordernumber)-- orderdetails(productcode)--product

select * 
from orders o 
join orderdetails using (ordernumber)
join products using (productcode);

