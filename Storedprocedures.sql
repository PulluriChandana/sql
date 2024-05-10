--Create procedure GetCustomers
--as
--Begin
	--Select * from Customers
--End
--exec GetCustomers
--Create procedure GetOrderDetails
--as
--Begin 
	--SELECT o.OrderID, p.ProductName, o.OrderDate,p.UnitPrice
    --FROM Orders o
    --INNER JOIN [Order Details] od On o.OrderID=od.OrderID
	--inner join Products p ON od.ProductID = p.ProductID;	
--End
--exec GetOrderDetails
--Create procedure getordersbycustomer 
--@customerID nvarchar(50)
--as
--begin
--select orderID,orderDate,ShippedDate,ShipName,ShipCountry from orders
--where customerID=@customerID;
--end
--go
--exec getordersbycustomer @customerID="ALFKI"
--CREATE PROCEDURE GetOrdersByEmployeeAndDateRange
--@EmployeeID INT,
--@StartDate DATETIME,
--@EndDate DATETIME
--AS
--BEGIN
--SELECT *
    --FROM Orders
    --WHERE EmployeeID = @EmployeeID
    --AND OrderDate BETWEEN @StartDate AND @EndDate;
--END;
--exec GetOrdersByEmployeeAndDateRange @employeeId=5 ,@startdate="1996-07-04",@enddate="1996-08-01";
CREATE PROCEDURE UpdateProductPrice
@ProductID INT,
@NewUnitPrice DECIMAL(18, 2)
AS
BEGIN
update products set UnitPrice=@NewUnitPrice
where ProductID=@ProductID
END;
exec UpdateProductPrice @productID=1 ,@newunitprice=22.00 ;
select * from Products


