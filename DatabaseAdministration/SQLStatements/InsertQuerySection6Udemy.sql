CREATE TABLE SalesStaff (
	staffID INT NOT NULL PRIMARY KEY,
	fName VARCHAR(50) NOT NULL,
	LName VARCHAR(50) NOT NULL
)

INSERT INTO SalesStaff (staffID, fName, LName)
VALUES (1, 'Kiaan', 'Patel')

Select * FROM salesstaff

INSERT INTO SalesStaff (staffID, fName, LName)
VALUES (2, 'Dino', 'Patel'),(3, 'John', 'Patel'),(4, 'Michael', 'Jackson')

CREATE TABLE SalesStaffNew (
	ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	staffID INT NOT NULL ,
	fName VARCHAR(50) ,
	LName VARCHAR(50) 
)

Select * FROM salesstaffnew

insert into salesstaffnew (staffid, fname, lname) 
Values (12, 'Kiaan', 'Patel')

insert into salesstaffnew (staffid, fname, lname) 
Values (17, 'John', 'Patel'), (18, 'Jack', 'Daniels'),(43, 'Johnny', 'Walker')

create table nameOnly (
	fname varchar(50),
	lname varchar(50)
)
insert into nameonly (fname, lname) 
Values ('Kiaan', 'Patel'),('jack', 'Daniels'),('Michael','Jackson')

select * from nameOnly
