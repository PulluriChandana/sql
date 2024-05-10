--create database employee 
CREATE TABLE employee (
    employeeID INT PRIMARY KEY identity,
    firstname NVARCHAR(50),
    lastname NVARCHAR(50),
    jobtitle NVARCHAR(50),
    hiredate DATE
	);
INSERT INTO employee (firstname, lastname, jobtitle, hiredate)
VALUES ('John', 'Doe', 'Software Engineer', '2023-01-15'),
       ('Jane', 'Smith', 'Data Analyst', '2022-08-20'),
       ('Michael', 'Johnson', 'Project Manager', '2023-05-10');
select * from employee

create procedure GetemployeeID
@employeeID int
as
Begin
	SELECT firstname, lastname, jobtitle, hiredate
    FROM employee
    WHERE employeeID = @EmployeeID;
end
exec GetemployeeID @employeeID=1;
create procedure insertemployee
@firstname nvarchar(50),
@lastname nvarchar(50),
@jobtitle nvarchar(50),
@hiredate date
as
begin
insert into employee(firstname,lastname,jobtitle,hiredate) 
values (@firstname,@lastname,@jobtitle,@hiredate)
end
exec insertemployee @firstname="Pulluri",@lastname="Chandna",@jobtitle="ASE",@hiredate='08-04-2024'
select * from employee
create procedure Reademployee1ID
@employeeID int
as
begin 
select firstname,lastname,jobtitle,hiredate from employee
where employeeID=@employeeID
end
exec Reademployee1ID @employeeID=1
create procedure UpdateEmployee
@EmployeeID INT,
@firstname nvarchar(50),
@lastname nvarchar(50),
@jobtitle nvarchar(50),
@hiredate date
as
begin
update employee set firstname=@firstname,lastname=@lastname,jobtitle=@jobtitle,hiredate=@hiredate where employeeID=@employeeID
end
exec UpdateEmployee @employeeID=2,@firstname="new",@lastname="new",@jobtitle="SE",@hiredate='2024-01-01'
select * from employee
create procedure Deleteemployee
@employeeID int
as
begin
delete from employee where employeeID=@employeeID
end
exec Deleteemployee @employeeID=2
select * from employee