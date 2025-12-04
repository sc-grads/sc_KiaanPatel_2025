select * from tblEmployee where EmployeeNumber = 194
select * from tblTransaction where EmployeeNumber = 5
select * from tblTransaction where EmployeeNumber = 194

begin tran

select * from tblTransaction where EmployeeNumber = 194

update tblTransaction
set EmployeeNumber = 194
output inserted.EmployeeNumber, deleted.EmployeeNumber -- any new rows is added to inserted and any deleted rows add to deleted, its like temporary tables that are created when you run the query
from tblTransaction
where EmployeeNumber in (3, 5, 7, 9)

select * from tblTransaction where EmployeeNumber = 5

rollback tran