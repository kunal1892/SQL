
-- Windows : PARTITIONS CREATED BY PARTITION BY CLAUSE

# Window Functions : functions applied to the windows
/*
1. divide the result set into subsets/partitions and 
2. apply window functions to each partition 
3. written in select clause and derive new columns
*/

# Syntax
/*
	SELECT 
		column1, column2,
		function(aggregation) OVER (PARTITION BY ... ORDER BY...)
	FROM table1
    	WHERE condition;
*/

# Window Functions:
USE classicmodels;
SELECT * FROM payments;

-- Aggregate Functions
-- max payment for every customer

-- ----------------------------------------------------------------------------------------------
-- Rank functions
USE day3;
SELECT DEP_ID, EMP_ID, SALARY FROM myemp ORDER BY DEP_ID;

-- 1. ROW_NUMBER() 
-- :Assigns a sequential integer to every row within its partition

select 
row_number() over () as rn,
dep_id, emp_id, salary 
from myemp;

select 
row_number() over(partition by dep_id) as rn,
dep_id, emp_id, salary
from myemp;

-- 2. RANK()
-- :Assigns a rank to every row within its partition
-- :Assigns the same rank to the rows with equal values
-- :There is a gap in the sequence of ranked values for every repeated value in the ordered sequence

select 
dep_id, emp_id, salary,
rank() over (order by salary desc) as _rank
from myemp;

select
dep_id, emp_id, salary,
rank() over(partition by dep_id order by salary desc) as _rank
from myemp;

-- 3. DENSE_RANK()
-- :Assigns a rank to every row within its partition
-- :Assigns the same rank to the rows with equal values
-- :There is no gap in the sequence of ranked values

select dep_id, emp_id, salary, dense_rank() over(order by salary desc) as den_rk
from myemp; 

select dep_id, emp_id, salary, dense_rank() over(partition by dep_id order by salary desc) as den_rk
from myemp; 

-- ----------------------------------------------------------------------------------------------
-- Value Functions
USE classicmodels;
SELECT * FROM payments;

-- 4. LEAD()
-- :Returns the value of the Nth row after the current row in a partition. 
-- :It returns NULL if no subsequent row exists.

select customernumber, paymentdate, amount,
lag(amount,1) over (partition by customernumber order by paymentdate asc) as pp,
lead(amount,1) over (partition by customernumber order by paymentdate asc) as np
from payments;

select customernumber, paymentdate, amount,
lag(amount,2) over (partition by customernumber order by paymentdate asc) as secound_pp,
lead(amount,2) over (partition by customernumber order by paymentdate asc) as secound_np
from payments;

-- 5. LAG()
-- :Returns the value of the Nth row before the current row in a partition. 
-- :It returns NULL if no preceding row exists.

-- 6. FIRST_VALUE()
-- :Returns the value of the specified expression with respect to the first row in the window frame.

select customernumber, paymentdate, amount,
first_value(amount) over (partition by customernumber order by paymentdate asc ) as firsr_paymnet
from payments;

-- 7. LAST_VALUE()
-- :Returns the value of the specified expression with respect to the last row in the window frame.

select customernumber, paymentdate, amount,
last_value(amount) over (partition by customernumber) as last_payment
from payments;
   
-- 1) prev and next payment date for every customerNumber
-- 2) % growth in the payment from the last payment date for every customerNumber
-- % growth = (amount - prevPayment)/prevPayment * 100



























