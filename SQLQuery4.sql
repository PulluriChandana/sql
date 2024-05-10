create table tblEmployee (Id int not null primary key,Name nvarchar(50),Gender nvarchar(50),Salary int,City nvarchar(50))
INSERT INTO tblEmployee (Id, Name, Gender, Salary,City)
VALUES (1, 'Tom', 'Male', 4000, 'London'),
(2, 'Pam', 'Female', 3000,'New York'),
(3, 'John', 'Male', 3500,'London'),
(4, 'Sam', 'Male', 4500,'London'),
(5, 'Todd', 'Male', 2800,'Sydney'),
(6, 'Ben', 'Male', 7000,'New York'),
(7, 'Sara', 'Female', 4800,'Sydney'),
(8, 'Valarie', 'Female', 5500,'New York'),
(9, 'James', 'Male', 6500,'London'),
(10, 'Russell', 'Male', 8800,'London')
select City,sum(Salary) as Totalsalary from tblEmployee group by city
select City,gender,sum(Salary) as Totalsalary from tblEmployee group by city,gender