select E.EmployeeFirstName as '@EmployeeFirstName'
	   , E.EmployeeLastName as '@EmployeeLastName'
	   , E.EmployeeNumber
       , E.DateOfBirth
	   , (Select T.Amount as 'Amount' from [dbo].tblTransaction as T
	   where T.EmployeeNumber =E.EmployeeNumber for xml path (''),type) as TransactionElement
from [dbo].[tblEmployee] as E
left join [dbo].[tblTransaction] as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber between 200 and 202
for xml path('Employees'), ROOT('MyXML')
