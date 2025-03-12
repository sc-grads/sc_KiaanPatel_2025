select 
FirstName +' '+ LastName As FullName,
TerritoryName,
TerritoryGroup,
SalesQuota,
SalesYTD,
SalesLastYear
into SalesStaff
from [AdventureWorks2022].[Sales].[vSalesPerson]

select * from  [AdventureWorks2022].[Sales].[vSalesPerson]

select * from  SalesStaff

update SalesStaff set SalesQuota = 50000

update SalesStaff set SalesQuota = SalesQuota + 150000

update SalesStaff set SalesQuota = SalesQuota + 150000, SalesYTD = SalesYTD - 500, SalesLastYear = SalesLastYear * 1.5

update SalesStaff set SalesQuota = 50000 where TerritoryGroup = 'Europe'

update SalesStaff set TerritoryGroup = 'United Kingdom' where TerritoryGroup is null

update SalesStaff set SalesQuota = sp.SalesQuota 
from SalesStaff ss
inner join [AdventureWorks2022].[Sales].[vSalesPerson]
on ss.FullName = (sp.FirstName+' '+sp.LastName)