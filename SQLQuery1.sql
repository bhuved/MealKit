create table Library
(
Id int primary key identity(1,1),
Name varchar(50) not null,
StreetAddress varchar(100),
City varchar(50),
State varchar(50),
Zipcode varchar(25),
ContactEmail varchar(100) not null,
OperatingHours varchar(100)
)

create table Publisher
(
	Id int primary key identity(1,1),
	Name varchar(50) not null,
	ContactEmail varchar(100) not null

)
--one publisher many books
create table Book
(
	Id int primary key identity(1,1),
	Title varchar(100) not null,
	ISBN varchar(25) not null,
	PublisherId int foreign key references Publisher(Id)
)

--many books can relate to many books
create table LibraryToBookRelation
(
	Id int primary key identity(1,1),
	LibraryId int foreign key references Library(Id),
	BookId int foreign key references Book(Id)
)

