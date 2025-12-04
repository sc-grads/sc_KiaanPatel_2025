begin transaction

delete tblTransaction
from tblTransaction
where EmployeeNumber in 
(
select TNumber
from (
select E.EmployeeNumber as ENumber, E.EmployeeFirstName,
       E.EmployeeLastName, T.EmployeeNumber as TNumber, 
       T.Amount as TotalAmount
from tblEmployee as E
right join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
--where T.EmployeeNumber IS NULL
group by E.EmployeeNumber, T.EmployeeNumber, E.EmployeeFirstName,
       E.EmployeeLastName, T.Amount) as newTable
where ENumber is null
--order by ENumber, TNumber, EmployeeFirstName,
--       EmployeeLastName
)
select count(*) from tblTransaction
rollback transaction
select count(*) from tblTransaction