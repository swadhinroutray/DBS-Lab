CREATE TABLE CUSTOMER(
cust_num int primary key,
cname varchar(50),
city varchar(50)
);
 CREATE TABLE ORDERS(
order_num int primary key,
odate date, 
cust_num int,                                                                                                        
ordamt int,                           
foreign key(cust_num) references CUSTOMER(cust_num)); 

CREATE TABLE ITEM(
item_num int primary key,
unitprice int
);

CREATE TABLE ORDER_ITEMS(
order_num int,
item_num int,
qty int,
primary key(order_num,item_num),
foreign key(order_num) references ORDERS(order_num),
foreign key(item_num) references ITEM(item_num)
);

CREATE TABLE WAREHOUSE(
warehouse_num int primary key,
city varchar(30)
);

CREATE TABLE SHIPMENT(
order_num int primary key,
warehouse_num int,
shipdate date,
foreign key(warehouse_num) references WAREHOUSE(warehouse_num)
);


insert into customer values(1234,'Ankit','Gurgaon');
insert into customer values(2345,'Avi','chandigargh');
insert into customer values(6785,'swadhin','pune');
insert into customer values(8936,'ritwick','jamshedpur');
insert into customer values(9203,'aprajita','ahemdabad');

insert into orders values(99889,'20-JAN-2019',1234,1000);
insert into orders values(33647,'19-OCT-2019',2345,1500);
insert into orders values(77483,'20-JUN-2018',6785,10000);
insert into orders values(34658,'28-FEB-2019',8936,100);
insert into orders values(99436,'10-JUL-2019',9203,10500);

insert into item values(22,980);
insert into item values(65,759);
insert into item values(93,970);
insert into item values(19,938);
insert into item values(94,739);

insert into order_items values(99889,22,9);
insert into order_items values(77483,65,23);
insert into order_items values(33647,93,90);
insert into order_items values(34658,19,19);
insert into order_items values(99436,94,9);

insert into warehouse values(974,'hyderabad');
insert into warehouse values(967,'noida');
insert into warehouse values(473,'bangalore');
insert into warehouse values(863,'mangalore');
insert into warehouse values(922,'gurgaon');

insert into shipment values(99889,974,'21-JAN-2019');
insert into shipment values(77483,967,'21-OCT-2019');
insert into shipment values(33647,473,'21-JUN-2018');
insert into shipment values(34658,863,'1-MAR-2019');
insert into shipment values(99436,922,'12-JUL-2019');




1.
SELECT cname as CUSTNAME, COUNT(*) as No_of_orders, AVG(ordamt)
FROM CUSTOMER Natural join ORDERS
GROUP BY cname;
2.
SELECT order_num 
from SHIPMENT NATURAL JOIN WAREHOUSE
where city = 'noida';

Decrease the order_amount by 10% if ordered quantity is greater than ten or else by 5% using Case construct
3.

UPDATE ORDERS
set ordamt = case
when ordamt>=10 then ordamt*0.9
else ordamt*0.95
end;
