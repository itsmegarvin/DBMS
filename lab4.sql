/*
	setting foreign key
	1.while creating table 
	2.while modifying 

	Qn. Modify relation teacher and student
		i. Set tid as foreign key
		ii. Set SID as primary key
		iii. Delete RN attribute.
*/
/*
	>	To add foreign key we need at least two tables with a common attribute.
	>	Also the table that contains forign key is child table.
	>	And other table must contain primary key and table is called parent table.
	>	Similarly , the reverse is not possible means the child table referencing parent table
		does not contain foreign key referencing child table.
*/
use abc;
--making attrubute common

ALTER TABLE student    --child table 
ADD tid int; 
SELECT * FROM student


ALTER TABLE teacher    --parent table
ADD tid int;
--now the tid cant be null so updating 
UPDATE teacher SET tid=10 where id=1;
UPDATE teacher SET tid=20 where id=2;
UPDATE teacher SET tid=30 where id=3;
UPDATE teacher SET tid=40 where id=4;
SELECT * FROM teacher

--now the tid of parent table should be primary key.
--but first we should also set the not null for that datatype.
ALTER TABLE teacher
ALTER COLUMN tid int not null;

ALTER TABLE teacher
ADD CONSTRAINT pkey5 PRIMARY KEY(tid);

ALTER TABLE student
ADD CONSTRAINT fkey FOREIGN KEY (tid)
REFERENCES teacher (tid);





