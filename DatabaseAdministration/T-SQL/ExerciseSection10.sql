select DATEPART(month, DateOfBirth) as MonthNumber, count(*) as NumberEmployees
from tblEmployee
group by datepart(month, DateOfBirth)
order by datepart(month, DateOfBirth)


select DATENAME(month, DateOfBirth) as MonthNumber, count(*) as NumberEmployees
from tblEmployee
group by datename(month, DateOfBirth), datepart(month, DateOfBirth)
order by datename(month, DateOfBirth) 


select DATENAME(month, DateOfBirth) as MonthNumber, 
count(*) as NumberEmployees, count(EmployeeMiddleName) as NumberOfMiddleNames, 
count(*)-count(EmployeeMiddleName) as MiddleName, 
format(min(DateOfBirth), 'dd-mm-yy') as EarliestDateOfBirth,
format(max(DateOfBirth), 'D') as LatestDateOfBirth
from tblEmployee
group by datename(month, DateOfBirth), datepart(month, DateOfBirth)
order by datename(month, DateOfBirth) 

