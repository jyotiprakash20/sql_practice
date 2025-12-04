-- create database office;

use  office;

-- create table employee (
-- 	eid int primary key unique,
--     firstname varchar(50),
--     lastname varchar(50),
--     department varchar(50),
--     salary decimal(10, 2)
-- );

-- insert into employee (eid, firstname, lastname, department, salary) values 
-- (1, 'John', 'Doe', 'HR', 55000.00),
-- (2, 'Jane', 'Smith', 'IT', 75000.00),
-- (3, 'Emily', 'Jones', 'Finance', 65000.00),
-- (4, 'Michael', 'Brown', 'IT', 80000.00),
-- (5, 'Sarah', 'Davis', 'HR', 60000.00),
-- (6, 'David', 'Wilson', 'Finance', 70000.00),
-- (7, 'Laura', 'Garcia', 'IT', 72000.00),
-- (8, 'Robert', 'Miller', 'HR', 58000.00),
-- (9, 'Sophia', 'Martinez', 'Finance', 67000.00),
-- (10, 'James', 'Anderson', 'IT', 81000.00);

-- select * from employee;



-- --1) How do you select all columns from the Employees table?


-- 	select * from employee;


-- --2) How do you select only the FirstName and Last Name columns from the Employees table?
-- 	select firstname, lastname from employee;

-- --3) How do you find all employees who work in the 'IT' department?

	-- 	select * from employee 
--         where department = 'IT';





-- --4) How do you select employees with a salary greater than 70,000?
	-- 	select * from employee 
--         where salary > 70000;


-- --5) How do you sort the results by Last Name in ascending order?
	-- 	select * from employee 
--         order by lastname asc;
        


-- --6) How do you select distinct departments from the Employees table?
	-- 	select distinct department from employee;


-- --7) How do you count the number of employees in each department?
		-- select department, count(*) as 'Number of employee' from employee 
--         group by department;
        



-- --8) How do you find the maximum salary in the Employees table?
	-- 	select department , max(salary) as 'maximum salary' from employee
--         group by department; 

-- --9) How do you find the average salary of employees in the 'Finance' department?
	-- SELECT AVG(salary) AS 'average salary'
-- 	FROM employee
-- 	WHERE department = 'Finance';


-- --10) How do you select employees whose last name starts with 'M'?
		-- select * from employee where lastname like  'm%';

-- select * from employee;

-- --1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
-- 	select * from employee 
--     where department = 'IT' and salary > 75000;


-- --2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
-- 	select * from employee 
--     where department = 'HR' or salary < 60000;


-- --3. How do you select employees who do not work in the 'Finance' department?
	-- 	select * from employee
--         where department != 'Finance';




-- --4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
	-- 	select * from employee 
--         where 60000 < salary < 70000 and department = 'Finance';


-- --5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
		-- select * from employee 
--         where department = 'IT' and salary < 80000;




-- --6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
	-- 	select * from employee 
--         where department = 'HR' or 'Finance' and salary > 65000;



-- --7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
		-- select * from employee 
--         where lastname = '%D' and department != 'HR';


-- --8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
		-- select * from employee 
--         where department != 'IT' and salary > 70000;


-- --9. How do you select employees who work in the 'IT' department and either have a salary greater 
-- --than 75,000 or have the first name 'Laura'?
-- 	select * from employee where (salary>75000 or firstname = 'Laura') and department in ('IT');


-- --10. How do you find employees who do not work in the 'HR' or 'IT' departments?
-- 	select * from employee where department not in ('HR','IT');




