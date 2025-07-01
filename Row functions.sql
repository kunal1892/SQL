use day3;
-- top 3 employees by salary 
select emp_id, job_id, dep_id, salary 
from myemp
where dep_id = 60 
order by salary desc
limit 3;



-- employee with 3rd highest salary from dep_id 60
select emp_id, dep_id, job_id, salary 
from myemp
where dep_id = 60
order by salary desc
limit 2,1;


-- Row functions : Functions that generate a new value for every row
-- 1) String Functions
-- 2) Date Function
-- 3) NULL Function
-- 4) Number Function

-- 1) String functions

select
emp_id,
first_name,
last_name,
concat(first_name, ' ',last_name) as Full_Name
from myemp;

select 
emp_id,
upper(first_name),
lower(last_name),
upper(concat(first_name,' ',last_name)) -- nested functions: functions written inside another functiom
from myemp;

select 
emp_id,
upper(first_name),
lower(last_name),
lower(concat(first_name,' ',last_name)) -- nested functions: functions written inside another functiom
from myemp;

select concat(upper(first_name),' ',lower(last_name))
from myemp;


-- Date functions 

select now(), date(now()), time(now());

select now(),
year(now()), quarter(now()), month(now()),monthname(now()), day(now()), dayname(now()),
hour(now()), minute(now()), second(now());


select * from myemp;

-- extract year,quater,month,month name,day day name 
select hire_date, year(hire_date), quarter(hire_date), month(hire_date), monthname(hire_date), day(hire_date), dayname(hire_date) 
from myemp;


-- employees hired after 2000
select * from myemp
where year(hire_date) > 2000;

-- employees hired before 2000
select * from myemp
where year(hire_date) < 2000;

-- employees hired in 2000
select * from myemp
where year(hire_date) = 2000;

-- employees hired between 2000 & 2010
select * from myemp
where year(hire_date) between 2000 and 2010;

-- employees hired in quater 3
select * from myemp
where quarter(hire_date) = 3;

-- employees hired till (on & before ) 25/5/2000
select * from myemp
where hire_date <= '2000-5-25';

select * from myemp
where hire_date <= '2000/5/25';


-- display employee full name & hire date havng work aniversary in August 
-- sort result by hire date first to last 
select 
concat(first_name,' ',last_name) as EMP_Name,
hire_date
from myemp
where monthname(hire_date) = 'August'
order by hire_date asc;


select 
concat(first_name,' ',last_name) as EMP_Name,
hire_date
from myemp
where month(hire_date) = 8
order by hire_date asc;

select 
concat(first_name,' ',last_name) as EMP_Name,
hire_date
from myemp
where month(hire_date) = 8
order by day(hire_date) asc;

-- display employee id , month of joinning & salary of employee hired between 1995 & 1999

select 
emp_id, monthname(hire_date) as hire_month, salary
from myemp 
where year(hire_date) between 1995 and 1999
order by hire_date asc ;


-- display salaries of employees hired before 1995 sort result by salary 

select distinct salary  
from myemp
where year(hire_date) < 1995
order by salary asc;


-- display employee id & month of joinning (jan, feb)
select emp_id, monthname(hire_date) as join_month;


-- display employee id and salary of employee hired in july & sept 
select 
emp_id, left(monthname(hire_date),3) as month_of_joining
from myemp;

-- display emp_id and salary of employee hired in july & september

select 
emp_id, salary
from myemp
where monthname(hire_date) in ('july', 'september');

select 
emp_id, salary
from myemp
where month(hire_date) in (7,9);


-- use mysql sting function webpage 



-- NULL Function 

-- NULL -- missing value -- data which abscent 

use day3;

-- Is null operator 
select emp_id, email from myemp
where email is null;

-- Is not null operator 
select emp_id, email from myemp
where email is not null;


-- IS Null() -- check null values 
-- IF Null() -- Replaces null values 
-- Coalesce() -- First not null value from list 

select emp_id, email, isnull(email), ifnull(email,'-- NOT REPORTED--'),coalesce(email,'--') 
from myemp;


select coalesce('MYSQL', null,null,null, 'ABC', null, '123');


create table employee (
     eid int primary key, 
     work_id varchar(100),
     personal_id varchar(100)
     );
     
     insert into employee values
     (1, 'ABC', 'AAA'),
     (2, null, 'BBB'),
     (3, 'PQR', 'CCC'),
     (4,null, null);
     
     select * from employee;
     
     select eid, coalesce(work_id, personal_id, '-- NOT REPORTED--' ) as communication_id
     from employee;
     
-- Note : concatination of with null will result into null

select concat('MYSQL',null);
 