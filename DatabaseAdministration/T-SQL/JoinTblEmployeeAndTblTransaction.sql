select tblEmployee.EmployeeNumber, EmployeeFirstName, Sum(Amount) as SumOfAMount
from tblEmployee
join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
Order by EmployeeNumber

select * from tblEmployee where EmployeeNumber = 1046 