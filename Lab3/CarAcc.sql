CREATE TABLE PERSONS(
driver_id varchar(30) primary key,
name varchar(30),
address varchar(100));

CREATE TABLE CAR(
regno varchar(20) primary key,
model varchar(30),
year int
);

CREATE TABLE ACCIDENT(
report_number int primary key,
acc_date date,
location varchar(50)
);

CREATE TABLE OWNS(
driver_id varchar(30),
regno varchar(30),
PRIMARY KEY(driver_id,regno),
foreign key(driver_id) references PERSONS(driver_id),
foreign key(regno) references CAR(regno)
);

CREATE TABLE PARTICIPATED(
driver_id VARCHAR(30),
regno varchar(20),
report_number int,
damage_amount int,
primary key(driver_id,regno,report_number),
foreign key(driver_id) references PERSONS(driver_id),
foreign key(regno) references CAR(regno),
foreign key(report_number) references ACCIDENT(report_number) on delete cascade;
);

//Inserting values into the tables

Persons 
INSERT INTO PERSONS VALUES('12331','SWADHINROUTRAY','Delhi');
INSERT INTO PERSONS VALUES('12332','Ankush','Pune');  
INSERT INTO PERSONS VALUES('12333','Rahul','Mumbai');  
INSERT INTO PERSONS VALUES('12334','Romeo','Lucknow');  
INSERT INTO PERSONS VALUES('12335','Tanya','Mathura'); 

Accidents
INSERT INTO ACCIDENT VALUES(1,'11-JAN-2000','PUNE');
INSERT INTO ACCIDENT VALUES(2,'11-JAN-2000','MUMBAI');
INSERT INTO ACCIDENT VALUES(3,'11-JAN-2000','DELHI');
INSERT INTO ACCIDENT VALUES(4,'11-JAN-2000','AGRA');
INSERT INTO ACCIDENT VALUES(5,'11-JAN-2000','MATHURA');

CAR
INSERT INTO CAR VALUES('12','SWIFT',2000);
INSERT INTO CAR VALUES('13','VERNA',2012);

OWNS
INSERT INTO OWNS VALUES('12331','12');
INSERT INTO OWNS VALUES('12332','13');

Participated
INSERT INTO PARTICIPATED VALUES('12331','12',1,12000);
INSERT INTO PARTICIPATED VALUES('12332','13',2,12000);

//Update command

UPDATE PARTICIPATED 
SET damage_amount = 25000
WHERE report_number = 1;

//Delete Command

DELETE FROM ACCIDENTS 
WHERE extract(year from acc_date) = 2000
on delete cascade;

//Alter and Delete a Column

ALTER TABLE PERSONS add
mob_no varchar(30);


ALTER TABLE PERSONS drop
column mob_no;


//Adding Check Constraint

ALTER TABLE ACCIDENTS
ADD CHECK (report_number>0);
