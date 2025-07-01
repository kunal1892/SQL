use day8;

select * from electronics_items;
select * from accessories;

select * from electronics_items e ,accessories a;

select * , e.price + a.price as total_price
from electronics_items e , accessories a;
