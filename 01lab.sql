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
--drop table table_name

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

alter table teachr
drop column faculty;

alter table teachr
add salary integer;

create table info_students(
roll integer,
name varchar(40)
);
insert into info_students(roll,name)
select roll,name from studentss
select * from info_students

--inserting or copying alternative
--select roll,name into info_student from student
--select * from info_student


drop table info_students
