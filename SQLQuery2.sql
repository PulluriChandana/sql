create table tblgender(id int not null primary key,gender nvarchar(50))
Insert into tblPerson(id,email,genderid)
Values (1,'pulluri.chandana@gmail.com',1),
(2,'abc@gmail.com',1),
(3,'abcd@gmail.com',1),
(4,'abce@gmail.com',1)
Insert into tblPerson(id,email,genderid)
Values (5,'abcde@gmail.com',2),
(6,'abcdefg@gmail.com',3),
(7,'abcdeg@gmail.com',2)
select * from tblPerson
Insert into tblgender(id,gender)
values(1,2),
(2,1),
(3,1),
(4,1)
delete from tblPerson where id=7
select * from tblPerson
update tblperson set email='abcdefg@gmail.com' where id=1
delete from tblPerson where id in (5,7,3,4)
select * from tblPerson