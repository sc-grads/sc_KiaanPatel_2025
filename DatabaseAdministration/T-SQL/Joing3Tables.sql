--Joining 3 tables
select *
from tblDepartment
left join tblEmployee
on tblDepartment.Department = tblEmployee.Department
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber

--checking department amount sum
select tblDepartment.Department, DepartmentHead, sum(Amount) as SumOfAmount
from tblDepartment
left join tblEmployee
on tblDepartment.Department = tblEmployee.Department
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by tblDepartment.Department, DepartmentHead
order by Department

insert into tblDepartment
values ('Accounts', 'James')

select D.DepartmentHead, sum(T.Amount) as SumOfAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction as T
on T.EmployeeNumber = E.EmployeeNumber
group by D.DepartmentHead
order by D.DepartmentHead