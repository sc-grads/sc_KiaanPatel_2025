/*

create PROCEDURE SelectAllPersonAddress
AS 
select * from Person.Address
go;


select * from Person.Address

exec SelectAllPersonAddress

execute SelectAllPersonAddress

drop PROCEDURE SelectAllPersonAddress

*/

----------------------------------------------------------------------------------------
/*

create PROCEDURE SelectAllPersonAddressWithParam (@city nvarchar(50)) --can also create stored procedure where instead on having @city nvarchar(50) we have: @city nvarchar(50) = 'New York' and it will only search for values for that city
AS 
begin
set nocount on
select * from Person.Address where City = @city
end

--drop PROCEDURE SelectAllPersonAddressWithParam

exec SelectAllPersonAddressWithParam @city = 'New York'
exec SelectAllPersonAddressWithParam @city = 'Memphis'
exec SelectAllPersonAddressWithParam @city = 'Miami'

*/

alter PROCEDURE SelectAllPersonAddressWithParam (@city nvarchar(50) = 'New York', @StateProvinceID int) --can also create stored procedure where instead on having @city nvarchar(50) we have: @city nvarchar(50) = 'New York' and it will only search for values for that city
AS 
begin
set nocount on
select * from Person.Address where StateProvinceID = @StateProvinceID
end

exec SelectAllPersonAddressWithParam @StateProvinceID = 11

--can create stored procedures with encryption y add WITH ENCRYPTION before AS but not recommended as the decryption process really difficult to navigate