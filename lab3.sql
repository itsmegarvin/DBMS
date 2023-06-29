create database ACEM;
use  ACEM;
create table studentss(
roll integer,
name varchar(20),
age integer
);
insert into studentss values
(1,'ram',19),
(2,'sam',21),
(3,'hari',22),
(4,'suman',20),
(5,'abhi',19);
select * from studentss;  --we can also use name or age instead of *
--drop table studentss

create table teachr(
name varchar(20),
faculty varchar(20)
);
insert into teachr values
('ramesh','BEI'),
('lokesh','BCT'),
('ashish','BEL'),
('ravi','BCE');
select * from teachr;

select * from studentss;

create table info_students(
roll integer,
name varchar(40)
);
insert into info_students(roll,name)
select roll,name from studentss
select * from info_students;
--inserting or copying alternative
--select roll,name into info_student from student
--select * from info_student
--to modify the table we should modify the datatype as well.--


--lab 03


--alter table table name 
--add foreign key (tid)


alter table studentss
add tid int

alter table teachr
alter column  tid integer not null 

alter table studentss
add constraint fkey
foreign key (tid)
references teachr (tid)

select * from teachr
select * from studentss

CREATE TABLE employee(
eid int not null,
ename varchar(30),
dateofemploy date,
salary int
);
ALTER table employee ADD primary key(eid)



CREATE TABLE booklist(
isbn int not null,
name varchar(30),
publication int
);
insert into booklist values
(1,'physics','ashmita'),
(2,'math','insights'),
(3,'chemistry','ashmita');
SELECT * FROM booklist

CREATE TABLE book(
isbn int not null,
name varchar(30),
publication varchar(30),
iid int,
primary key(isbn)
);

ALTER table book ADD primary key(isbn)

alter table book 
add iid int 


insert into book (isbn,name,publication) values
(1,'physics','ashmita'),
(2,'math','insights'),
(3,'chemistry','ashmita');
SELECT * FROM book

CREATE TABLE issues(
iid int not null,
name varchar(30),
dateofissue int,
isbn int ,
primary key (iid)
);




insert into issues (iid,name)values
(1,'physics'),
(2,'math'),
(3,'chemistry');
SELECT * FROM issues

alter table book 
add constraint fkeys_bid 
foreign key (isbn)
references issues (isbn)


ALTER TABLE studentss
ALTER COLUMN tid integer NOT NULL

ALTER TABLE issues
ADD CONSTRAINT keyy PRIMARY KEY(isbn)
ALTER TABLE issues
DROP CONSTRAINT isbn
insert into employee (eid,ename,salary)values --here date column is not included means it is made null.--
(1,'Phil',40000),
(2,'Jake',25000),
(3,'Harry',30000),
(4,'Sull',60000),
(5,'Garvin',90000);
SELECT * FROM employee

alter table employee
add constraint chkk
Check (salary<100000)

alter table employee
alter column salary int not null








