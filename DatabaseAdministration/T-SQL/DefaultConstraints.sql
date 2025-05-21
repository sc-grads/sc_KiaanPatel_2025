alter table tblTransaction
add DateOfEntry datetime --nulls can be entered

select * from tblTransaction 

alter table tblTransaction
add constraint defDateOfEntry DEFAULT getdate() for DateOfEntry; -- now its unique

delete from tblTransaction
where EmployeeNumber < 3

insert into tblTransaction (Amount, DateOfTransaction, EmployeeNumber)
values (1, '2014-01-01', 1) --wont work as unique constraint still active
insert into tblTransaction
values (2, '2014-01-01', 1, '2013-01-01')

select * from tblTransaction 
where EmployeeNumber < 3


create table tblTransAction2 (
Amount smallmoney not null,
DateOfTransaction smalldatetime not null,
EmployeeNumber int not null,
DateOfEntry datetime not null constraint defDateOfEntery default getdate()
) -- cannot create constraints for tables when they have the same names

alter table tblTransAction2
drop column DateOfEntry

alter table tblTransAction2
drop constraint defDateOfEntry --have to drop constraint first before you drop column related to that constraint

drop table tblTransAction2