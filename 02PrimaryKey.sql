--Both primary key and foreign key are SQL CONSTRAINT


USE abc;

/*
Create the relations as below:
Employee (eid as pk, ename, dateofemploy, salary)
Booklist(isbn as pk, name, publication )
Book(bid as pk, bname, author, price)
Issues(IID as pk,name,dateofissue)
*/
/*
primary can be set 
1.while creating table 
2.modifying
*/



--creating table employee
CREATE TABLE employee(
eid int not null,
ename varchar(10),
dateofemploy date,
salary money,
CONSTRAINT pkey PRIMARY KEY (eid)
);
INSERT INTO employee values
(12,'marco','2020-03-23',80000),
(26,'luka','2018-05-11',25000),
(38,'diego','2021-06-17',50000),
(49,'raphael','2022-08-15',30000);
SELECT * FROM employee;



--creating table booklist	
--International Standard Book Number (ISBN) is numeric commercial book identifier that is intended to be unique
CREATE TABLE booklist(
isbn int not null,
name varchar(50),
publication varchar(50),
CONSTRAINT pkey1 PRIMARY KEY (isbn)
);
INSERT INTO booklist values
(112,'SQL in 10 Minutes','Sams Publishing'),
(262,'SQL Cookbook','O′Reilly'),
(381,'Learning SQL','Penguin Books Ltd'),
(492,'SQL Queries for Mere Mortals','Addison-Wesley');
SELECT * FROM booklist;



--creating table book
CREATE TABLE book(
bid int not null,
bname varchar(50),
author varchar(50),
price money,
CONSTRAINT pkey3 PRIMARY KEY (bid)
);
INSERT INTO book values
(1,'SQL in 10 Minutes','Ben Forta',3000),
(2,'SQL Cookbook','Anthony Molinaro',2500),
(3,'Learning SQL','Alan Beaulieu',990),
(4,'SQL Queries for Mere Mortals','John Viescas',4000);
SELECT * FROM book;



--creating issues table 
CREATE TABLE issues(
iid int,
name varchar(50),
dateofissue date
);
INSERT INTO book values
(1,'SQL in 10 Minutes','1999-08-17',3000),
(2,'SQL Cookbook','2002-09-11',2500),
(3,'Learning SQL','2008-12-22',990),
(4,'SQL Queries for Mere Mortals','2011-02-15',4000);
SELECT * FROM book;
	--setting primary key to iid by altering before that we have set datatype to not null.
ALTER TABLE issues
ALTER column iid int not null

ALTER TABLE issues
ADD CONSTRAINT pkey4 PRIMARY KEY (iid);








