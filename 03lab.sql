use ACEM;
select * from book
select * from booklist


--qn 1
select publication,author,bname from booklist  right join book on publication='ashmita'

select * from booklist  right join book on publication='ashmita'

--qn 2
select * from teachr

select * from issues

alter table issues
add tid int;
update  issues set  tid='12' where name='physics'
update issues set tid='123' where name='math'
update issues set tid='214' where name ='chemistry'


select teachr.name,faculty from teachr,issues where teachr.tid =issues.tid and dateofissue='2015-01-01'
 
 
-- qn 3
select * from employee

select * from teachr

select * from employee as e,teachr where e.eid =  teachr.tid and salary>50000 and faculty='BCT'

-- qn 4

select * from issues

alter table issues
add bid int;

--qn 5
select * from teachr
select * from issues

select issues.name,teachr.name  from teachr,issues where teachr.name like 'r%'

--qn 6
alter table teachr
add salary money;

select * from teachr

update teachr set salary= 10000 where name='ramesh'
update teachr set salary= 50000 where name='lokesh'
update teachr set salary= 40000 where name='ashish'
update teachr set salary= 60000 where name='ravi'

update  teachr set salary = salary* 0.1

--qn 7

select * from book
UPDATE book
SET bname = 'mathematics'
WHERE author='swamiji';

--qn 8
select * from employee
update employee set salary=salary*0.2  where salary<50000

--qn 9
select * from  employee
update employee set salary=1.02*salary where salary<6000


--qn 11
select * from employee
delete from employee where eid=1

--qn 12

select * from teachr
select * from employee
--here aren't any date in the employee table so first let insert the date
 
update employee set dateofemploy='2018-01-02' where ename='garvin';
select name,faculty from teachr where tid in(select eid from employee where dateofemploy='2018-01-02')

--qn 13 
select * from book
select * from booklist

select bname,author from book where bname in (select name from booklist where publication='ashmita')












