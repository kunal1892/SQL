USE day15;

SELECT * FROM stock; -- products in stock
SELECT * FROM sales; -- products sold

-- UNION : combines results , remove duplicate rows 

select product_id from stock
union
select product_id from sales;

-- UNION ALL : combine results , keeps duplicate row

select product_id from stock
union all
select product_id from sales;

-- INTERSECT : take common results

select product_id from stock
where product_id in (select product_id from sales);

-- Example 1: Full Outer Join  -- INNER JOIN, LEFT JOIN, RIGHT JOIN
/*
LEFT JOIN
UNION
RIGHT JOIN
*/
	
    select product_id, quantity_sold, stock_quantity
    from sales left join stock using (product_id)
    union
	select product_id, quantity_sold, stock_quantity
    from sales right join stock using (product_id);
    
USE day3;
-- Example: Display Top 5 and Bottom 5 employees by salary

select * from (select emp_id, salary from myemp order by salary desc limit 5) t1
union
select * from (select emp_id, salary from myemp order by salary asc limit 5) t2;

-- Example 2: 5th and 8th highest salary
select * from (select emp_id, salary from myemp order by salary desc limit 4,1) t1
union
select * from (select emp_id, salary from myemp order by salary desc limit 7,1) t2;










