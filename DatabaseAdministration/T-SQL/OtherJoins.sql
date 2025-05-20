--Inner Join (gets values where value is present in both tables)
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as SumOfAmount
from tblEmployee 
join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
ORDER BY EmployeeNumber

--Left Join (gets all the rows/values in the left table)
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as SumOfAmount
from tblEmployee 
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
ORDER BY EmployeeNumber

--Right Join ( gets all the rows/values in right table)
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as SumOfAmount
from tblEmployee 
right join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
ORDER BY EmployeeNumber

--Cross Join (takes no. of rows in tbl 1 and tbl 2 and multiplies them together and shows those values)
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as SumOfAmount
from tblEmployee 
cross join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
ORDER BY EmployeeNumber


--So now to show 1046 and 1048, since they exist in left table (tblEmployee) we use left join
select tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName, sum(Amount) as SumOfAmount
from tblEmployee 
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
ORDER BY EmployeeNumber

select * from tblEmployee