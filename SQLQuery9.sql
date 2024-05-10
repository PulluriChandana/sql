create database globe
CREATE TABLE categories (
    categoryid INT PRIMARY KEY,
    categoryname VARCHAR(100)
);

CREATE TABLE products2 (
    productid INT PRIMARY KEY,
    productname VARCHAR(100),
    price DECIMAL(10, 2),
    categoryid INT,
    FOREIGN KEY (categoryid) REFERENCES categories(categoryid)
);
Insert into categories(categoryid,categoryname)
values (1,'fruits'),
(2,'dairy'),
(3,'dry fruits')
select * from categories
Insert into products2(productid,productname,price,categoryid)
values (1, 'Apple', 1.00, 1),
(2, 'Milk', 0.99, 2),
(3, 'Cheese', 2.50, 2),
(4, 'Banana', 0.50, 1),
(5, 'Yogurt', 1.50, 2);
select * from products2
UPDATE products2
SET price = 1.25
WHERE productid = 2;
select * from products2
delete from products2 where productid=2
select * from products2
SELECT p.productid, p.productname, p.price, c.categoryname
FROM products2 p
INNER JOIN categories c ON p.categoryid = c.categoryid;



