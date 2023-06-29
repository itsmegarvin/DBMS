CREATE DATABASE abc
USE abc;			-- sql is a non case sensitive query language --


--creating table named student--
CREATE TABLE student(
id int,
name varchar(50),
roll int,
batch int
);
--inserting values to table named students--
INSERT INTO student values
(1,'Adam',20,2023),
(2,'Bryan',19,2024),
(3,'Bett',20,2022),
(4,'phil',21,2023);
SELECT * FROM student--displaying the contents of the table--

--to remove roll from the table student
ALTER TABLE student
DROP COLUMN roll;

drop table teacher

SELECT * FROM student




CREATE TABLE teacher(
id int,
name varchar(20),
faculty char(20)
);
INSERT INTO teacher VALUES
(1,'Louis','BEI'),
(2,'Thomas','BCE'),
(3,'David','BEL'),
(4,'Sergio','BCT');
SELECT * FROM teacher



--Now altering the table by adding the column named salary--
ALTER TABLE teacher
ADD salary INTEGER;

SELECT * FROM teacher; --semicolon is optional in sql--


--copying content/data from one table to another--
CREATE TABLE infostudents(
roll int,
name varchar(10)
);
INSERT INTO infostudents
SELECT roll,name FROM student

SELECT * FROM infostudents;


--deleting all records from infostudents
DELETE FROM infostudents

SELECT * FROM infostudents;
