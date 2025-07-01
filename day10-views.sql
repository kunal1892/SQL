# Views
/*
Virtual table created by the named query
Operated similar to base table but does not contain any data of its own
*/

USE day3;

select dep_id, emp_id, first_name, job_id, salary from myemp;

# Commands
-- CREATE VIEW
create view emp_view as 
select dep_id, emp_id, first_name, job_id, salary from myemp;

-- ACCESS DATA FROM THE VIEW

select * from emp_view;

select dep_id, emp_id, first_name, job_id, salary from myemp;

-- ALTER VIEW

alter view emp_view as 
select dep_id, emp_id, first_name, job_id, salary 
from myemp
where dep_id <> 60;

-- DROP VIEW
drop view emp_view;


















