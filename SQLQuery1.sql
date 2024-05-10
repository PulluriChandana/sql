Insert into employee1(id,firstname,lastname,address,phonenumber)
Values 
(1,'pulluri','chandana','karimnagar','8125996811'),
(2,'patolla','keerthana','hyderabad','9490013858'),
(3,'poolri','chandana','karimnagar','9490013967'),
(4,'patolla','keerthana','hyderabad','9494582536'),
(5,'pulluri','chandana','karimnagar','8143213858'),
(6,'patolla','keerthana','hyderabad','6281174038')
select * from employee1
Insert into department(id,deptname,deptlocation)
Values(1,'IT','HYD'),
(2,'Consulting','BLR'),
(3,'Tax','Kochi')
select * from department
delete from employee1 where id=6
select * from employee1
delete from department where id=3
select * from department
update employee1 set firstname='manisha' where id=1
select * from employee1
update department set deptname='EYGDS' where id=1
select * from department
