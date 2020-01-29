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
foreign key(item_num) references ITEM(item_num),
);

CREATE TABLE WAREHOUSE(
warehouse_num int primary key,
city varchar(30),
foreign key(city) references CUSTOMER(city)
);

CREATE TABLE SHIPMENT(
order_num int primary key,
warehouse_num int,
shipdate date,
foreign key(warehouse_num) references WAREHOUSE(warehouse_num)
);
