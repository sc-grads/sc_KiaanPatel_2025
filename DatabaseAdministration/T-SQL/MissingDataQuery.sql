--Left Join
select E.EmployeeNumber as ENumber, E.EmployeeFirstName,
       E.EmployeeLastName, T.EmployeeNumber as TNumber, 
       sum(T.Amount) as TotalAmount
from tblEmployee as E
left join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber IS NULL
group by E.EmployeeNumber, T.EmployeeNumber, E.EmployeeFirstName,
       E.EmployeeLastName
order by E.EmployeeNumber, T.EmployeeNumber, E.EmployeeFirstName,
       E.EmployeeLastName


--Right Join
select * 
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
order by ENumber, TNumber, EmployeeFirstName,
       EmployeeLastName


--Deleting empy rows (missing data in employee table for transactions)
begin transaction

select count(*) from tblTransaction

delete tblTransaction
from tblEmployee as E
right join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber is null

select count(*) from tblTransaction

rollback transaction