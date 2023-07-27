use ACEM;

--qn 1
select * from teachr
select * from employee

select ename,faculty,teachr.salary  from employee inner join teachr on tid=eid

--qn 2

select * from book
select * from booklist

select * from book left join booklist on bid=isbn


-- qn 3

select * from book
select * from booklist

select * from book right join booklist on bid=isbn

--qn 4
select * from studentss
select * from issues

select * from issues as i full join studentss as s on i.bid=s.tid

--qn 5
select ename,salary from employee where ename like 's%' and ename like '%ul%'

--qn 6
select * from employee
select * from teachr


