select * from payments;

select customernumber, amount from payments
where amount = (select max(amount) from payments);   -- max amount

select customernumber, amount from payments
where amount = (select min(amount) from payments); -- min payment

-- table customers

-- customer with max creditlimit

select customernumber , creditlimit from customers
where creditLimit = (select max(creditLimit) from customers );  -- max criditlimit

select customernumber , creditlimit from customers
where creditLimit = (select min(creditLimit) from customers );  -- min creditlimit

-- table product 

select productname , buyprice from products
where buyprice = (select max(buyPrice) from products ); 

select productname , buyprice from products
where buyprice = (select min(buyPrice) from products );

-- table  myemp
use day3;

select emp_id, salary from myemp
where salary = (select max(salary) from myemp);

select emp_id, salary from myemp
where salary = (select min(salary) from myemp);
