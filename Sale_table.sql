-- create database Sales;
-- use sales;

-- create table sale_table (
-- 	id int primary key auto_increment,
--     product varchar(100),
--     category varchar(100),
--     price decimal(10,2),
--     quantity int,
--     order_date date
-- );

-- insert into sale_table(id, product, category, price, quantity, order_date)
-- values
-- (1, 'Laptop', 'Electronics', 55000, 2, '2025-01-01'),
-- (2, 'Headphones', 'Electronics', 2500, 5, '2025-01-05'),
-- (3, 'Office Chair', 'Furniture', 8000, 3, '2025-04-23'),
-- (4, 'T-Shirt', 'Clothing', 700, 10, '2025-05-25'),
-- (5, 'Coffee Maker', 'Appliances', 3200, 2, '2025-06-01'),
-- (6, 'Novel Book', 'Books', 450, 4, '2025-06-15'),
-- (7, 'Smartphone', 'Electronics', 35000, 1, '2025-07-05'),
-- (8, 'Dining Table', 'Furniture', 22000, 1, '2025-07-30');

-- select * from sale_table;

#Find the total sales
-- select sum(price*quantity) as total_sale from sale_table;

#Find the top 3 best-selling products
-- select product, sum(quantity) as total_quantity from sale_table
-- group by product
-- order by total_quantity desc
-- limit 3;

#Find avg sales per category
-- select category, avg(price*quantity) as avg_sale from sale_table 
-- group by category;

#Find sales done in january
-- select * from sale_table where month(order_date) = 1;

#Count how many orders were placed per month
-- select month(order_date) as month, count(*) as total_orders
-- from sale_table
-- group by month(order_date)
-- order by month;

