USE [TSQL-UdemyCourse]
GO


alter view [dbo].[ViewByDepartment] as--with encryption as --to secure the view add with encryption before as
select D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber between 120 and 139
--order by D.Department, T.EmployeeNumber --order by invailid in views and cannot be used in them

GO


