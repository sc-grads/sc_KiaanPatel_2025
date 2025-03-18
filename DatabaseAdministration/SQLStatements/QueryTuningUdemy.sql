--Grasp an understanding of the databse desgn and schema
--In this instance the credit card and person table both have a common FK businessentityid which is then used to get the persons 
--first and last name from person table and where the business entity id on credit card table and person table match shows the 
--person credit card id along with their first and last name
SELECT LastName, FirstName,[CreditCardID]
FROM [Person].[Person]
INNER JOIN [Sales].[PersonCreditCard]
ON [Person].[Person].[BusinessEntityID] = [Sales].[PersonCreditCard].[BusinessEntityID];


--Indexing
select * from [Sales].[SalesOrderDetail] where [CarrierTrackingNumber] = '4911-403C-98'
--upon running above query we get a missing index message in execution plan, meaning we need to right click on message and go into missing index
--detail and then create the rerquired index as done below and the missing index will not occur increasing performance
USE [AdventureWorks2022]
GO
CREATE NONCLUSTERED INDEX IDX_SalesOrderDetail_CarrierTrackingNumber
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber])


-- Avoid using SELECT *, instead just select columns that you need:
SELECT * FROM [Person].[Person]

SELECT LastName, FirstName FROM [Person].[Person]


--Use joins instead of subqueries
select LastName from Person.Person where BusinessEntityID in (select BusinessEntityID from Sales.SalesPerson where SalesQuota = 300000.00)

select LastName 
from Person.Person p
join Sales.SalesPerson s
on p.BusinessEntityID = s.BusinessEntityID
where SalesQuota = 300000.00


--Use stored procedures
Create Table NewEmployees 
(FirstName nvarchar(50) ,
LastName nvarchar(50))

CREATE PROCEDURE AddNewEmployee
@FirstName nvarchar(50), 
@LastName nvarchar(50)
AS
BEGIN
    INSERT INTO NewEmployees (FirstName, LastName)
    VALUES (@FirstName, @LastName);
END;

exec AddNewEmployee 'Imran','Afzal'


select * from NewEmployees 
-- Avoid functions in the WHERE clause:

SELECT * FROM [Sales].[SalesOrderDetail] WHERE YEAR([ModifiedDate]) = 2011; 


SELECT * FROM [Sales].[SalesOrderDetail] WHERE [ModifiedDate] BETWEEN '2011-01-01' AND '2011-12-31'; 


-- Use Pagination
SELECT * FROM [Sales].[SalesOrderDetail] 
ORDER BY SalesOrderID
OFFSET 50 ROWS 
FETCH NEXT 10 ROWS ONLY;


-- Declare variables to hold parameter values
DECLARE @LastName nvarchar(50), @FirstName nvarchar(50);

-- Set values for parameters
SET @LastName = 'Abbas';
SET @FirstName = 'Syed';

-- Write the parameterized query
SELECT LastName, FirstName FROM [Person].[Person] where LastName = @LastName and FirstName = @FirstName


SELECT LastName, FirstName FROM [Person].[Person] where LastName = 'abbas' and FirstName = 'syed'