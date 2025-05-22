alter table tblEmployee
add constraint unqGovernmentID UNIQUE (EmployeeGovernmentID);

select EmployeeGovernmentID, count(EmployeeGovernmentID) as MyCount from tblEmployee
group by EmployeeGovernmentID
having count(EmployeeGovernmentID)>1

select * from tblEmployee where EmployeeGovernmentID IN ('HN513777D', 'TX593671R')


begin tran
delete from tblEmployee
where EmployeeNumber < 3

delete from tblTransaction
where EmployeeNumber = 131

select * from tblEmployee where EmployeeGovernmentID IN ('HN513777D', 'TX593671R')

commit tran


alter table tblTransaction
add constraint unqTransaction UNIQUE (Amount, DateOfTransaction, EmployeeNumber)

delete from tblTransaction
where EmployeeNumber = 131

insert into tblTransaction
VALUES (1,'2015-01-01', 131)
insert into tblTransaction --wont inser as i have a unique key active and this clashes with the uniques of transactions and employe enumbers
VALUES (1,'2015-01-01', 131)

alter table tblTransaction
Drop constraint unqTransaction --by dropping uniqueness, i can not add duplicate transactions

create table tblTransaction2
(Amount smallmoney not null,
DateOfTransaction smalldatetime not null,
EmployeeNumber int not null,
CONSTRAINT unqTransaction2 UNIQUE (Amount,DateOfTransaction,EmployeeNumber))

insert into tblTransaction2
VALUES (1,'2015-01-01', 131)
insert into tblTransaction2 --wont insert as i have a unique key active and this clashes with the uniques of transactions and employe enumbers
VALUES (1,'2015-01-01', 131)

drop table tblTransaction2 -- i dropped the table
