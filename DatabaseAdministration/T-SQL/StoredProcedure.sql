create proc NameEmployees as
begin
	select EmployeeNumber, EmployeeFirstName, EmployeeLastName
	from tblEmployee
end
go

--How to execute stored procedures
go
NameEmployees --this has to start at the beginnig on the bath so we use go before it, best to use exec and execute
execute NameEmployees
exec NameEmployees

