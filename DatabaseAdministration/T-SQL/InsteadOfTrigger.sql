--create trigger tr_ViewByDepartment
--on dbo.ViewByDepartment
--instead of delete
--as
--begin
--	select*, 'ViewByDepartment' from deleted
--end

--begin tran
--SELECT * FROM ViewByDepartment where TotalAmount = -2.77 and EmployeeNumber = 132
--delete from ViewByDepartment
--where TotalAmount = -2.77 and EmployeeNumber = 132
--SELECT * FROM ViewByDepartment where TotalAmount = -2.77 and EmployeeNumber = 132
--rollback tran

--update ViewByDepartment
--set TotalAmount = -2.77
--where EmployeeNumber = 132


alter TRIGGER tr_ViewByDepartment
ON dbo.ViewByDepartment
INSTEAD OF DELETE
AS
BEGIN
    declare @EmployeeNumber as int
	declare @DateOfTransaction as smalldatetime
	declare @Amount as smallmoney
	select @EmployeeNumber = EmployeeNumber, @DateOfTransaction = DateOfTransaction,  @Amount = TotalAmount
	from deleted
	--SELECT * FROM deleted
	delete tblTransaction
	from tblTransaction as T
	where T.EmployeeNumber = @EmployeeNumber
	and T.DateOfTransaction = @DateOfTransaction
	and T.Amount = @Amount
END

begin tran
--SELECT * FROM ViewByDepartment where TotalAmount = -2.77 and EmployeeNumber = 132
delete from ViewByDepartment
where TotalAmount = -2.77 and EmployeeNumber = 132
--SELECT * FROM ViewByDepartment where TotalAmount = -2.77 and EmployeeNumber = 132
rollback tran
