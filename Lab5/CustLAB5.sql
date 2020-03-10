select c.cname
from CUSTOMER c
where not exists (select d.city from CUSTOMER d where c.cust_num=d.cust_num);	

select cust_num, cname , sum(ordamt)
from CUSTOMER natural join ORDERS
group by cust_num, cname 
having sum(ordamt) = (select max(ordamt) from ORDERS);

select o.order_num 
from ORDERS o
where not exists (select order_num from SHIPMENT);

select item_num
from ITEM
where not exists (select item_num from order_ITEMs);

select * from (select count(cust_num) from ORDERS natural join ORDER_ITEMS group by cust_num order by count(cust_num) desc) where rownum=1;

select order_num
from ORDERS
where not exists (select order_num from SHIPMENT where shipdate='2019-JUL-08');

select cust_num
from ORDERS
where exists (select cust_num from SHIPMENT where shipdate='2019-JUL-08') and (select cust_num from SHIPMENT where shipdate='2019-JUL-04');

select c.*
from CUSTOMER c
where not exists ((select order_num from ORDERS where cust_num = c.cust_num) except
	 (select order_num from ORDERS natural join SHIPMENT where warehouseno=974 and cust_num=c.cust_num));

select * from (select count(cust_num) from ORDERS group by cust_num order by count(cust_num) desc) where rownum=1;