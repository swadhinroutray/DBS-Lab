create table STUDENT(
regno varchar(20) primary key,
name varchar(50),
major varchar(20)
);

create table COURSE(
course_num int primary key,
cname varchar(30),
dept varchar(30)
);

create table ENROLL(
regno varchar(20),
course_num int,
PRIMARY KEY(regno,course_num),
FOREIGN KEY(regno) references STUDENT(regno),
FOREIGN KEY(course_num) references COURSE(course_num)
);

create table BOOK_ADOPTION(
course_num int,
sem int,
book_isbn int,
PRIMARY KEY(course_num,book_isbn),
FOREIGN KEY(course_num) references COURSE(course_num),
FOREIGN KEY(book_isbn) references TEXT(book_isbn)
);

create table TEXT(
book_isbn int,
booktitle varchar(50),
publisher varchar(50),
author varchar(50),
Primary key(book_isbn)
);




INSERT INTO STUDENT VALUES('1','Swadhin','Computers');
INSERT INTO STUDENT VALUES('2','Ayush','Theatre');
INSERT INTO STUDENT VALUES('3','Ritvik','Life');

INSERT INTO COURSE VALUES(1000, 'Computers', 'CS');
INSERT INTO COURSE VALUES(1001, 'Theatre', 'Drama');
INSERT INTO COURSE VALUES(1002, 'LIFE', 'Philosphy');

INSERT INTO ENROLL VALUES('1',1000);
INSERT INTO ENROLL VALUES('1',1001);
INSERT INTO ENROLL VALUES('1',1002);
INSERT INTO ENROLL VALUES('2',1001);

INSERT INTO TEXT VALUES(500,'Intro to Computers','Kamath','MIT');
INSERT INTO TEXT VALUES(501,'Intro to Drama','Jha','TATA');
INSERT INTO TEXT VALUES(502,'Intro to LIFE','Kamath','MIT');
INSERT INTO TEXT VALUES(503,'Intro to FOOTBALL','Kamath','MIT');

INSERT INTO BOOK_ADOPTION VALUES(1000,1,500);
INSERT INTO BOOK_ADOPTION VALUES(1001,2,501);
INSERT INTO BOOK_ADOPTION VALUES(1002,2,502);
INSERT INTO BOOK_ADOPTION VALUES(1001,2,503);

A.
SELECT Count(*),course_num as CourseNumber,cname as CourseName
FROM COURSE NATURAL JOIN BOOK_ADOPTION 
GROUP BY course_num,cname
HAVING COUNT(*)>0;

B.
Select COURSE.dept
From COURSE NATURAL JOIN BOOK_ADOPTION NATURAL JOIN TEXT
WHERE TEXT.publisher = 'Kamath';

C.
SELECT Count(*), dept 
FROM STUDENT Natural Join ENROLL NATURAL JOIN COURSE
GROUP BY dept
HAVING COUNT(*)>1;

D.
SELECT regno,name FROM STUDENT
where STUDENT.REGNO 
not in 
(SELECT regno FROM STUDENT NATURAL JOIN ENROLL);
 
E.
SELECT DISTINCT(TEXT.booktitle)
FROM ENROLL NATURAL JOIN BOOK_ADOPTION NATURAL JOIN TEXT;
F.
Select publisher, Count(*)
From COURSE NATURAL JOIN BOOK_ADOPTION NATURAL JOIN TEXT
GROUP BY publisher
HAVING count(*)>0;

G.Select name,max(total) from (
SELECT name,course_num, COUNT(course_num) as total
FROM STUDENT NATURAL JOIN ENROLL NATURAL JOIN BOOK_ADOPTION
GROUP BY course_num,name)
GROUP BY name;

H. 
Select publisher, count(publisher)
from TEXT 
group by publisher;

I.
select name from STUDENT
where regno in 
(select regno from ENROLL natural join BOOK_ADOPTION group by regno);