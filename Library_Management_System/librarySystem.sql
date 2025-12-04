use librarysystem;

# Author Table
-- create table Author(
-- 	id int auto_increment primary key,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null
--     );
 #Category table   
-- 	create table Category(
-- 		id int auto_increment primary key,
-- 		category_name varchar(100) not null
--    );
    
#Book table
-- create table Book(
-- 		id int auto_increment primary key,
-- 		title varchar(100) not null,
--  		publication_date date,
--  		copies_owned int default 1,
-- 		category_id int,
--  		foreign key(category_id) references Category(id)
--  	);
#Book_author
-- create table Book_author(
-- 	book_id int,
--     author_id int,
--     
--     foreign key (book_id) references Book(id),
--     foreign key (author_id) references Author(id),
--     
--     primary key(book_id, author_id)
--     );
# member status
	-- create table member_status(
-- 		id int auto_increment primary key,
--         status_value varchar(50) not null
--         );
#Member
-- create table Member(
-- 	id int auto_increment primary key,
--     first_name varchar(100) not null,
--     last_name varchar(100) not null,
--     joined_date date,
--     active_status_id int,
--     foreign key (active_status_id) references member_status(id)
--     );

# loan
-- create table Loan(
-- 	id int auto_increment primary key,
--     book_id int,
--     member_id int,
--     loan_date date,
--     returned_date date,
--     
--     foreign key (book_id) references Book(id),
--     foreign key (member_id) references Member(id)
--     
--     );

#Fine
-- create table Fine(
-- 	id int auto_increment primary key,
--     member_id int,
--     loan_id int,
--     fine_date date,
--     fine_amount float,
--     
--     foreign key (member_id) references Member(id),
--     foreign key (loan_id) references Loan(id)
--     
--     );
    
 # Inserting data to Category & Author
--  insert into Category(id, category_name)
--  values (001, 'Fiction'),
-- 	    (002, 'Technology');
-- insert into Author(id, first_name, last_name)
-- values (100, 'JK','Rowling'),
-- 		(101, 'Robert','Martin');
-- UPDATE Author
-- SET last_name = 'Martin'
-- WHERE id = 101;

select * from Author;
select * from category;
 
    
    
    
