--Multi Statement Function
create function [dbo].[FunctionName]
(
	@param1 int,
	@param2 char(5)
)
returns @returnable table
(	
	[c1] int,
	[c2] char(5)
)
as
begin
	insert @returnable
	select @param1, @param2
	return
end


create function TransList(@EmployeeNumber int)
returns @Translist table
(
	Amount smallmoney,
	DateOfTransaction smalldatetime,
	EmployeeNumber int
)
as 
begin
	insert into @Translist(Amount, DateOfTransaction, EmployeeNumber)
	select Amount, DateOfTransaction, EmployeeNumber from tblTransaction
	where EmployeeNumber = @EmployeeNumber
	return
end
select * from dbo.Translist(123)
go
