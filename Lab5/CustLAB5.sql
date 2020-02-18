select c.cname
from customer c
where not exists (select d.city from customer d where c.custno=d.custno);	

select custno, cname , sum(ordamt)
from customer natural join orders
group by custno, cname 
having sum(ordamt) = (select max(ordamt) from orders);

select o.orderno 
from orders o
where not exists (select orderno from shipment);

select itemno
from item
where not exists (select itemno from order_items);

select * from (select count(custno) from orders natural join order_items group by custno order by count(custno) desc) where rownum=1;

select orderno
from orders
where not exists (select orderno from shipment where shipdate='2019-JUL-08');

select custno
from orders
where exists (select custno from shipment where shipdate='2019-JUL-08') and (select custno from shipment where shipdate='2019-JUL-04');

select c.*
from customer c
where not exists ((select orderno from orders where custno = c.custno) except
	 (select orderno from orders natural join shipment where warehouseno=1337 and custno=c.custno));

select * from (select count(custno) from orders group by custno order by count(custno) desc) where rownum=1;