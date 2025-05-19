select left(EmployeeFirstName, 1) as Initial, count(*) as CountInitial
from tblEmployee
group by left(EmployeeFirstName, 1)
order by CountInitial desc

select left(EmployeeLastName, 1) as Initial, count(*) as CountInitial
from tblEmployee
group by left(EmployeeLastName, 1)
order by CountInitial desc


select top(5) left(EmployeeLastName, 1) as Initial, count(*) as CountInitial
from tblEmployee
group by left(EmployeeLastName, 1)
order by CountInitial desc


select left(EmployeeLastName, 1) as Initial, count(*) as CountInitial
from tblEmployee
group by left(EmployeeLastName, 1)
having count(*) >= 50
order by CountInitial desc

select left(EmployeeLastName, 1) as Initial, count(*) as CountInitial
from tblEmployee
where DateOfBirth > '19860101'
group by left(EmployeeLastName, 1)
having count(*) >= 20
order by CountInitial desc --aliases can only be used in group by clause

Update tblEMployee
set EmployeeMiddleName = NULL
Where EmployeeMiddleName = ''