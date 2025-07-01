# Stored Procedure
/* 
Predefined, reusable sequence of SQL statements stored and executed as a single unit
Consist of a 
	1. Name - to refer for reuse 
	2. Parameter list -  to pass values and get results back
	3. Body - having SQL statements separated by semicolons(;)
Implements business logic, performs database operations, automates tasks
Use:
-- Reusability 
-- Abstraction 
*/

# Types of Stored Procedures
-- 1. Simple Stored Procedure
-- 2. Procedure with IN parameter
-- 3. Procedure with OUT parameter
-- 4. Procedure with INOUT parameter

# Variables
-- Named data object that store data values are used to pass values from one statement to another.
-- Value of an user-defined varibale can be changed during procedure execution.
-- Steps to use Variables inside stored program
	-- 1. Declaring Variables 	--> DECLARE variable_name data-type DEFAULT default_value;
    -- 2. Assigning Values	  	--> SET variable_name = value;
  
-- To use Variables outside the stored program
  -- SET @VAR_NAME = 2;
  
# Parameters
-- temporary variables that holds the arguement passed and/or return value
-- Modes of parameter
	-- 1. IN	-> to pass an input/arguement to stored procedure
	-- 2. OUT	-> to return back value from the stored procedure to the calling statement
    -- 3. INOUT	-> combination of IN and OUT parameter
 
 USE classicmodels;
# Examples:
-- 1. Create an procedure that displays the employee details

delimiter //
create procedure getdetails()
begin
      select * from employees;
end // 
delimiter ;

call getdetails();      


-- 2. Create a procedure to get the employee details for a given employee number.
-- 1002, 1056, 1076, 1088

delimiter //
create procedure getempdetails(in eid int) 
begin
      select * from employees
      where employeeNumber = eid;
      end //
      delimiter ;
      
      -- for 2 or more input & outpute 
      delimiter //
create procedure getempdetails2(in eid1 int, in eid2 int) 
begin
      select * from employees
      where employeeNumber in (eid1, eid2);
      end //
      delimiter ;
      
      call getempdetails();
       
       call getempdetails2(1002,1056);


-- 3. Create a procedure that returns employeecount for a given office location
-- USA, France, Japan, Australia ,UK

delimiter $$
create procedure getempcount(in loc varchar(100), out ecount int)
begin

select count(employeenumber) into ecount
from offices join employees using (officecode)
where country = loc;

end $$
delimiter ;


call getempcount('france',@empcount);
select @empcount;

-- for 2 or more input & output

delimiter $$
create procedure getempcount2(in loc1 varchar(100),in loc2 varchar(100), out ecount1 int,out ecount2 int)
begin

select count(employeenumber) into ecount1
from offices join employees using (officecode)
where country = loc1;

select count(employeenumber) into ecount2
from offices join employees using (officecode)
where country = loc2;
end $$
delimiter ;


call getempcount2('usa','france',@empcount1,@empcount2);
select @empcount1,@empcount2;


-- 4. set a value for a variable outside a procedure
-- create a procedure to increment the counter with every call

-- H/W:
-- 1. create procedure to get employee experience



































