-- create database table_join;

use table_join;

-- create table customer(
-- 	customerID int primary key,
--     customerName varchar(50),
--     country varchar(50)
-- );

-- insert into customer (customerID, customerName, country) values
-- (1, 'Alice', 'USA'),
-- (2, 'Bob', 'UK'),
-- (3, 'Charlie', 'Canada'),
-- (4, 'David', 'USA'),
-- (5, 'Eve', 'Australia');

-- select * from customer;

-- create table  orders(
-- 		orderID int primary key,
--     customerID int,
--     orderDate date,
--     productID int,
--     foreign key(customerId) references customer(customerID)
--     
-- );

-- insert into orders (orderID, customerID, orderDate, productID) values
-- (101, 1, '2024-08-01', 1001),
-- (102, 1, '2024-08-03', 1002),
-- (103, 2, '2024-08-04', 1001),
-- (104, 3, '2024-08-05', 1003),
-- (105, 5, '2024-08-06', 1004);

-- select * from orders;


-- create table product (
--  productID int primary key,
--  productName varchar(50),
--  price decimal(10, 2)
-- );
-- insert into product (productID, productName, price) values
-- (1001, 'Laptop', 1000),
-- (1002, 'Smartphone', 700),
-- (1003, 'Tablet', 500),
-- (1004, 'Headphones', 200),
-- (1005, 'Smartwatch', 300);

-- select * from product;




-- select * from Customers

-- select * from Orders

-- select * from Products


-- --1) Write an SQL query to find the names of customers who have placed an order.
-- 	 select distinct customerName from customer c inner join orders o 
--      on o.customerID = c.customerID;

-- --2) Find the list of customers who have not placed any orders.
		-- SELECT DISTINCT customerName 
-- 		FROM customer c 
-- 		LEFT JOIN orders o
-- 			ON c.customerID = o.customerID
-- 		WHERE o.orderID is null;



-- --3) List all orders along with the product name and price.
	-- select distinct productName, price from orders o join product p on o.productID = p.productID;


-- --4) Find the names of customers and their orders, including customers who haven't placed any orders.
-- 		select distinct customerName, orderID from customer c left join orders o on o.customerID = c.customerID;

-- --5) Retrieve a list of products that have never been ordered.
		-- select distinct p.productId, productName from product p left join orders o on p.productID = o.productID 
--         where o.orderdate is null;

-- --6) Find the total number of orders placed by each customer.
-- 	select    customerName,count(orderID) as Total_number from customer c inner join orders o 
-- 	on c.customerID = o.customerID
--     group by customerName;

-- --7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
		
-- 		select distinct customerName,p.productID,productName,orderDate
-- 		from customer c left join orders o on c.customerID = o.customerID left join product p on o.productID = p.productID;





