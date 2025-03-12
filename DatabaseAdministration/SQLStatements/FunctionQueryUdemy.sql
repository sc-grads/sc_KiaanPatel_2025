select max(rate) from HumanResources.EmployeePayHistory

select min(rate) from HumanResources.EmployeePayHistory

select count(*) from HumanResources.EmployeePayHistory

select sum(rate) from HumanResources.EmployeePayHistory

print 'dotnet'

print upper('dotnet')

print lower('doTNet')

print convert(int, 15.56)

print getDate()

print day(getDate())

print month(getDate())

print year(getDate())

-----------------------------------------------------------------

create table FunctionEmployee
(
	EmpID int primary key,
	FirstName varchar(50) null,
	LastName varchar(50) null,
	Salary int null,
	Address varchar(100) null
)

insert into FunctionEmployee values
(1, 'Mark', 'Grover', 22000, 'Dehli'),
(2, 'Jack', 'Camry', 5000, 'New York'),
(3, 'James', 'May', 45000, 'Stockholm'),
(4, 'Seb', 'Vettel', 32000, 'Durban')


select * from FunctionEmployee

--Scalar function
/*

create function fnGetEmpFullName
(@FirstName varchar(50), @LastName varchar(50))
returns varchar(101)
AS
begin
return (select @FirstName +' '+ @LastName)
end

select dbo.fnGetEmpFullName (FirstName, LastName) as FullName, Salary from FunctionEmployee
*/

--Table Valued function
/*

create function fnGetEmployee()
returns table 
AS
return (select * from FunctionEmployee)

select * from dbo.fnGetEmployee()
*/

create function fnGetMultipleEmployee()
returns @Emp Table
(
EmpID int,
FirstName varchar(50),
Salary int
)
AS 
BEGIN 
insert into @Emp 
	select e.EmpID, e.FirstName, e.Salary from FunctionEmployee e;
	update @Emp set Salary = 25000 where EmpID = 1;
return
end

select * from dbo.fnGetMultipleEmployee()