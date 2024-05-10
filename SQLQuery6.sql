create table tblemployee1(id int not null,name nvarchar(50),gender nvarchar(50),salary int,departmentid int)
insert into tblemployee1(id,name,gender,salary,departmentid)
values
(1,'tom','male',4000,1),
(2,'pom','female',3000,3),
(3,'john','male',3500,1),
(4,'sam','male',4500,2),
(5,'todd','male',2800,2),
(6,'ben','male',7000,1),
(7,'sara','female',4800,3),
(8,'valarie','female',5500,1),
(9,'james','male',6500,NULL),
(10,'russell','male',8800,NULL)
select * from tblemployee1
create table hexadb(id int not null,departmentname nvarchar(50),location nvarchar(50),departmenthead nvarchar(50))
insert into hexadb(id,departmentname,location,departmenthead)
values (1,'IT','London','Rick'),
(2,'Payroll','Delhi','Ron'),
(3,'HR','New York','Christie'),
(4,'Other department','Sydney','cindrella')

select * from hexadb
--inner join
select name,gender,salary,departmentname from tblemployee1
INNER JOIN hexadb
on tblemployee1.departmentid =hexadb.id
--left join or left outer join
select name,gender,salary,departmentname from tblemployee1
left Outer join hexadb
on tblemployee1.departmentid=hexadb.id
select name,gender,salary,departmentname from tblemployee1
left join hexadb
on tblemployee1.departmentid=hexadb.id
--right join or right outer join
select name,gender,salary,departmentname from tblemployee1
right Outer join hexadb
on tblemployee1.departmentid=hexadb.id
select name,gender,salary,departmentname from tblemployee1
right join hexadb
on tblemployee1.departmentid=hexadb.id
select name,gender,salary,departmentname from tblemployee1
full outer join hexadb
on tblemployee1.departmentid=hexadb.id
select name,gender,salary,departmentname from tblemployee1
full join hexadb
on tblemployee1.departmentid=hexadb.id

