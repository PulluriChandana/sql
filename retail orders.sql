create database retail
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50)
);
INSERT INTO Orders (OrderID, CustomerName, OrderDate, TotalAmount, Status) VALUES
(1001, 'John Smith', '2024-05-01', 50.00, 'Processing'),
(1002, 'Jane Doe', '2024-05-02', 75.00, 'Shipped'),
(1003, 'Mike Johnson', '2024-05-03', 120.00, 'Delivered'),
(1004, 'Emily Brown', '2024-05-04', 30.00, 'Processing'),
(1005, 'Alex Lee', '2024-05-05', 90.00, 'Pending'),
(1006, 'Sarah Clark', '2024-05-06', 60.00, 'Processing'),
(1007, 'David Wilson', '2024-05-07', 85.00, 'Shipped'),
(1008, 'Emma Garcia', '2024-05-08', 110.00, 'Delivered'),
(1009, 'Michael Martinez', '2024-05-09', 40.00, 'Processing'),
(1010, 'Jessica Taylor', '2024-05-10', 70.00, 'Pending');


select * from Orders