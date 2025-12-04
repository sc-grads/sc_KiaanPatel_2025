USE [TSQL-UdemyCourse]
GO

--if exists(select * from sys.views where name = 'ViewByDepartment')
if exists(select * from INFORMATION_SCHEMA.VIEWS
where [TABLE_NAME] = 'ViewByDepartment' and [TABLE_SCHEMA] = 'dbo')
   drop view dbo.ViewByDepartment
go

CREATE view [dbo].[ViewByDepartment] as 
select D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
WITH CHECK OPTION
--order by D.Department, T.EmployeeNumber
GO


begin tran

insert into ViewByDepartment(EmployeeNumber,DateOfTransaction,TotalAmount)
values (132,'2015-07-07', 999.99)

select * from ViewByDepartment order by Department, EmployeeNumber

rollback tran-- cannot update views to show other info thats not in it

begin tran
--select * from ViewByDepartment order by EmployeeNumber, DateOfTransaction
--select * from tblTransaction where EmployeeNumber in (132, 142)

update ViewByDepartment
set EmployeeNumber = 144
where EmployeeNumber = 132

select * from ViewByDepartment order by EmployeeNumber, DateOfTransaction
--select * from tblTransaction where EmployeeNumber in (132, 142)

rollback tran-- to prevent people from writing this code to change what they can actually see in a view, we can use the WITH CHECK OPTION

--for some reaason the WITH CHECK OPTION is not working for me
