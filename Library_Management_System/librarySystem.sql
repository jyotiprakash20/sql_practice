use librarysystem;

# Author Table
create table Author(
	id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null
    );
 #Category table   
	create table Category(
		id int auto_increment primary key,
		category_name varchar(100) not null
   );
    
#Book table
create table Book(
		id int auto_increment primary key,
		title varchar(100) not null,
 		publication_date date,
 		copies_owned int default 1,
		category_id int,
 		foreign key(category_id) references Category(id)
 	);
#Book_author
create table Book_author(
	book_id int,
    author_id int,
    
    foreign key (book_id) references Book(id),
    foreign key (author_id) references Author(id),
    
    primary key(book_id, author_id)
    );
# member status
 create table member_status(
		id int auto_increment primary key,
        status_value varchar(50) not null
        );
#Member
create table Member(
	id int auto_increment primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    joined_date date,
    active_status_id int,
    foreign key (active_status_id) references member_status(id)
    );

# loan
create table Loan(
	id int auto_increment primary key,
    book_id int,
    member_id int,
    loan_date date,
    returned_date date,
    
    foreign key (book_id) references Book(id),
    foreign key (member_id) references Member(id)
    
    );

#Fine
create table Fine(
	id int auto_increment primary key,
    member_id int,
    loan_id int,
    fine_date date,
    fine_amount float,
    
    foreign key (member_id) references Member(id),
    foreign key (loan_id) references Loan(id)
    
    );
    
 # Inserting data to Category & Author
 insert into Category(id, category_name)
 values (001, 'Fiction'),
		(002, 'Technology');
 insert into Author(id, first_name, last_name)
 values (100, 'JK','Rowling'),
		(101, 'Robert','Martin');
	UPDATE Author
	SET last_name = 'Martin'
	WHERE id = 101;

#Insert data into books

insert into Book(title, publication_date, category_id, copies_owned)
values ('Harry Potter','1997-06-26', 001, 10);

#Connect Book and Author through book_author
insert into Book_author(book_id, author_id)
values (1, 100);

#Check for member_status
insert into member_status(status_value)
values ('Active');

#Insert member
insert into Member(first_name, last_name, joined_date, active_status_id)
values('Jyotiprakash', 'Padhi', curdate(),1);

#Issuing a book
insert into Loan(book_id, member_id, loan_date, returned_date)
values (1,1, curdate(), null);


#Using Magic command
select 
	m.first_name,
    m.last_name,
    b.title,
    l.loan_date
from Loan l
join Member m on l.member_id = m.id
join Book b on l.book_id = b.id;

#Update loan table
update Loan
set loan_date = '2025-11-01'
where id = 1;

#Return date 
update Loan
set returned_date = curdate()
where id = 1;

#Total days kepts
select datediff(returned_date, loan_date) as days_kept
from Loan
where id = 1;

#Fine table
insert into Fine(member_id, loan_id, fine_date, fine_amount)
values (1,1,curdate(),270);

#Check list of defaulters
select 
	m.first_name,
    m.last_name,
    b.title,
    f.fine_amount as fine_owed,
    f.fine_date
from Fine f
join Member m on f.member_id = m.id
join Loan l on f.loan_id = l.id
join Book b on l.book_id = b.id;  

select * from Book;
select * from Book_author;
 
    
    
    
