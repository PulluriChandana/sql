create database amazondb
create table customers(customerid int not null,customername nvarchar(50),city nvarchar(50))
insert into customers(customerid,customername,city) 
values (1,'john smith','new york'),
(2,'laura adams','los angeles'),
(3,'brian taylor','chicago'),
(4,'chris wool','miami')
select * from customers
create table orders(ordersid int not null,customerid int,orderdate date,totalamount float)
insert into orders(ordersid,customerid,orderdate,totalamount)
values(101,1,'2022-01-10',150.00),
(102,2,'2022-02-15',200.00),
(103,3,'2022-02-20',165.00),
(104,1,'2022-03-05',225.00)
select * from orders
create table products(orderid int,productname nvarchar(50),quantity int,price float)
insert into products(orderid,productname,quantity,price)
values(101,'widget',3,25.00),
(101,'gizmo',2,30.00),
(102,'widget',1,25.00),
(103,'doochickey',5,15.00),
(104,'thingamajig',2,50.00)
select * from products
select customers.customername,orderdate,products.productname,products.quantity,totalamount from orders
inner join products
on orders.ordersid=products.orderid
inner join customers
on customers.customerid=orders.customerid
select customers.customername,count(ordersid) as totalorders,sum(totalamount) as totalamountspent from orders
left join customers
on customers.customerid=orders.customerid
group by customername
select productname from products
left join orders
on orders.ordersid=products.orderid where orders.ordersid is null
select ordersid,orderdate,customers.customername from orders
left join customers
on customers.customerid=orders.customerid
left join products
on products.orderid=orders.ordersid where products.orderid is null

