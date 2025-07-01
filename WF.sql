use day3;

select * from myemp;

select sum(salary) from myemp;

select 
dep_id, emp_id, salary,
sum(salary) over () as total_salary,
max(salary) over () as max_salary,
min(salary) over () as min_salary
from myemp;

select
dep_id, emp_id, salary,
max(salary) over (partition by dep_id) as max_salary,
min(salary) over (partition by dep_id) as min_salary
from myemp;


select dep_id, max(salary), min(salary)
from myemp
group by dep_id;