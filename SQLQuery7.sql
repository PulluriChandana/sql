create table productstable(productid int not null,productname nchar(50),price int)
insert into productstable(productid,productname,price)
values(1001,'widget',20.00),
(1002,'gizmo',45.50),
(1003,'doohickey',15.75),
(1004,'thingamajig',5.99)
select * from productstable
create table orderstable(orderid int not null,customername nvarchar(50),productid int,quantity int)
insert into orderstable(orderid,customername,productid,quantity)
values(5001,'bob smith',1001,2),
(5002,'alice jones',1003,5),
(5003,'charlie brown',1002,1),
(5004,'dana white',1005,3)
select * from orderstable
--Inner join
select orderstable.orderid, orderstable.customername, productname, price, orderstable.Quantity from productstable
inner join orderstable
on productstable.productid=orderstable.productid
--left join
select orderstable.orderid, orderstable.customername, productname, price, orderstable.Quantity from productstable
left join orderstable
on productstable.productid=orderstable.productid
--right join
select ProductName, Price, orderstable.orderid, orderstable.customername, orderstable.quantity from productstable
right join orderstable
on productstable.productid=orderstable.productid
--full join
select ProductName, Price, orderstable.orderid, orderstable.customername, orderstable.quantity from productstable
full join orderstable
on productstable.productid=orderstable.productid