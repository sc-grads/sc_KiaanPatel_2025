create table SalesStaff
(
	staffID INT NOT NULL Primary Key,
	firstname nvarchar(50) not null,
	lastname nvarchar(50) not null,
	countryregion nvarchar(50) not null
)

drop table SalesStaff

select * from SalesStaff

insert into SalesStaff
select businessentityid, firstname,lastname, countryregionname from [AdventureWorks2022].[Sales].vsalesperson

delete SalesStaff

delete from SalesStaff

delete from SalesStaff
where countryregion = 'United States'

begin tran 
delete from SalesStaff
where countryregion = 'United States'

rollback tran

begin tran 
delete from SalesStaff
where countryregion = 'United States'
commit


-----------------------------------------------------------------

delete SalesStaff 
where staffID in
(select businessentityid from [AdventureWorks2022].[Sales].vsalesperson where SalesLastYear = 0)

select * from SalesStaff

delete SalesStaff
from [AdventureWorks2022].[Sales].vsalesperson sp
inner join SalesStaff ss
on sp.businessentityid = ss.staffID
where sp.SalesLastYear = 0