CREATE TRIGGER TR_tblTransaction
    ON [dbo].[tblTransaction]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
		select * from Inserted
		select* from Deleted
    END
GO

BEGIN TRAN
insert into tblTransaction(Amount, DateOfTransaction, EmployeeNumber)
VALUES (123,'2015-07-10', 123)
--delete tblTransaction 
--where EmployeeNumber = 123 and DateOfTransaction = '2015-07-10'
ROLLBACK TRAN
GO

