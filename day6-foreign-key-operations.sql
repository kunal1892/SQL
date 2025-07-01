# Operations on Child Table 
SELECT * FROM employees;

-- 1. Insert
insert into employees values (7, 'john doe', '2023-05-01', 105);

-- 2. Update
update employees set dept_id = 107 where employeeid = 3;

-- 3. Delete 
-- ---------------------------------------------------------

# Operations on Parent Table 
SELECT * FROM departments;
SELECT * FROM employees;

-- 1. Update
update departments set id= 108 where id = 101;
-- 2. Delete
delete from departments where id = 102;
-- 3. Insert


