select * from tblEmployee 
where DateOfBirth between '19760101' and '19890101'

select * from tblEmployee 
where DateOfBirth >='19760101' and DateOfBirth < '19890101'

select * from tblEmployee 
where year(DateOfBirth) between 1976 and 1986 -- DO NOT USE

select year(DateOfBirth) as YearDateOfBirth, count(*) as NumberBorn
from tblEmployee 
group by year(DateOfBirth)

select * from tblEmployee 
where year(DateOfBirth) = 1967

select year(DateOfBirth) as YearDateOfBirth, count(*) as NumberBorn
from tblEmployee
where 1=1
group by year(DateOfBirth)
order by year(DateOfBirth) ASC