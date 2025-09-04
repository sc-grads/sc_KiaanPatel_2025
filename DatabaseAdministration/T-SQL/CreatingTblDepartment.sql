select Department as NumberOfDepartments
from 
(select Department, count(*) as NumberOfDepartment 
from tblEmployee 
Group by Department) as newTable

--derived table

select distinct Department, convert(varchar(20), 'N') as DepartmentHead
into tblDepartment
from tblEmployee

select * from tblDepartment

drop table tblDepartment