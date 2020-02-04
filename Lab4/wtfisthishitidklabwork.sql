insert into CUSTOMER values(1234,'Ankit','Gurgaon');
insert into CUSTOMER values(2345,'Avi','chandigargh');
insert into CUSTOMER values(6785,'swadhin','pune');
insert into CUSTOMER values(8936,'ritwick','jamshedpur');
insert into CUSTOMER values(9203,'aprajita','ahemdabad');

insert into ORDERS values(99889,'2019-01-20',1234,1000);
insert into ORDERS values(33647,'2019-01-20',2345,1500);
insert into ORDERS values(77483,'2019-01-20',6785,10000);
insert into ORDERS values(34658,'2019-01-20',8936,100);
insert into ORDERS values(99436,'2019-01-20',9203,10500);

insert into ITEM values(22,980);
insert into ITEM values(65,759);
insert into ITEM values(93,970);
insert into ITEM values(19,938);
insert into ITEM values(94,739);

insert into ORDER_ITEMS values(99889,22,9);
insert into ORDER_ITEMS values(77483,65,23);
insert into ORDER_ITEMS values(33647,93,90);
insert into ORDER_ITEMS values(34658,19,19);
insert into ORDER_ITEMS values(99436,94,9);

insert into WAREHOUSE values(974,'hyderabad');
insert into WAREHOUSE values(967,'noida');
insert into WAREHOUSE values(473,'bangalore');
insert into WAREHOUSE values(863,'mangalore');
insert into WAREHOUSE values(922,'gurgaon');

insert into SHIPMENT values(99889,974,'2019-01-20');
insert into SHIPMENT values(77483,967,'2019-01-20');
insert into SHIPMENT values(33647,473,'2019-01-20');
insert into SHIPMENT values(34658,863,'2019-01-20');
insert into SHIPMENT values(99436,922,'2019-01-20');


1.
select cname
from CUSTOMER NATURAL JOIN ORDERS
WHERE ORDERS.odate = '2019-01-20';


2.
select count(*)
from ORDERS NATURAL JOIN ORDER_ITEMS
GROUP BY qty;
+----------+
| count(*) |
+----------+
|        2 |
|        1 |
|        1 |
|        1 |
+----------+


3.
select max(qty)
from ORDER_ITEMS;
+----------+
| max(qty) |
+----------+
|       90 |
+----------+

4.
select max(order_num)
from SHIPMENT
GROUP BY shipdate;
+----------------+
| max(order_num) |
+----------------+
|          99889 |
+----------------+

5.
DELETE FROM ITEM WHERE item_num =22;
(23000): Cannot delete or update a parent row: a foreign key constraint fails (`dbslab`.`ORDER_ITEMS`, CONSTRAINT `ORDER_ITEMS_ibfk_2` FOREIGN KEY (`item_num`) REFERENCES `ITEM` (`item_num`))


6.
select order_num 
from SHIPMENT NATURAL JOIN WAREHOUSE
where WAREHOUSE.city = 'noida';
+-----------+
| order_num |
+-----------+
|     77483 |
+-----------+

7.
select cname from CUSTOMER where cname like '%dhin%';
+---------+
| cname   |
+---------+
| swadhin |
+---------+
8.
select cname,ordamt from CUSTOMER NATURAL JOIN ORDERS ORDER BY ordamt desc;
+----------+--------+
| cname    | ordamt |
+----------+--------+
| aprajita |  10500 |
| swadhin  |  10000 |
| Avi      |   1500 |
| Ankit    |   1000 |
| ritwick  |    100 |
+----------+--------+
9.
(SELECT name from PERSONS) 
minus 
(SELECT name from PERSONS NATURAL JOIN PARTICIPATED NATURAL JOIN ACCIDENT GROUP BY name having count(*)>0);
