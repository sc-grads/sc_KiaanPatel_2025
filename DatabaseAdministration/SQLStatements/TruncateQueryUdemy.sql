select * from SalesStaff

truncate table SalesStaff

create table EmployeeNew
(
	ID int identity(1, 1) not null,
	EmployeeName nvarchar(50) NOT null
)

select * from EmployeeNew

/*
USE [AdventureWorks2022]
GO

INSERT INTO [dbo].[EmployeeNew]
           ([EmployeeName])
     VALUES
           ('Abbas'),('Imran'),('Jagadish'),('Dino')
GO
*/
begin tran
delete from EmployeeNew

rollback tran

delete from EmployeeNew

INSERT INTO [dbo].[EmployeeNew]
           ([EmployeeName])
     VALUES
           ('Abbas'),('Imran'),('Jagadish'),('Dino')

select * from [dbo].[EmployeeNew]

truncate table EmployeeNew