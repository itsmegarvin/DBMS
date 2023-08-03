use ACEM;

--qn 1
select * from teachr
select * from employee

select ename,faculty,teachr.salary  from employee inner join teachr on tid=eid

--qn 2

select * from book
select * from booklist

select * from book left join booklist on book.bname=booklist.name


-- qn 3

select * from book
select * from booklist

select * from book right join booklist on bid=isbn

--qn 4
select * from studentss
select * from issues

select * from studentss
full join issues
on studentss.tid=issues.tid

--qn 5
select * from employee
select ename,salary from employee where ename like 's%' and ename like '%ul%'

--qn 6

select ename from employee 
inner join teachr
on employee.ename=teachr.name

--qn 7
select * from employee
select * from teachr

insert into teachr values
('garvin','BEI','77','10000','C');
update teachr set name='Garvin' where bookiss='C'

select ename from employee except select name from teachr

--qn 8
create view employeeview
as select eid,ename,salary from employee

--qn 9
insert into employeeview values
('1','jones','24000');

select * from employeeview 

--qn 10
delete from employeeview
where eid=1
select * from employeeview 


















