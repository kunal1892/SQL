-- Derived columns : Generated using functions or formulas 
-- Drivied columns can not be filterd using WHERE clause
--  to filter derived columns use sub_queries, Having  

use day3;

-- Diaplay Annual salary of employees 

select emp_id, salary, salary * 12 as Annual_salary
from myemp;

-- Display bonus given to employee (Bonus= 20% of salary)
-- Bonus = salary * 0.2 

select emp_id,salary, salary * 0.2 as Bonus
from myemp;

-- Diaplay updated salary of employees 
-- updated salary = salary * 1.1 

select emp_id, salary, salary * 1.1 as updated_salary
from myemp;
