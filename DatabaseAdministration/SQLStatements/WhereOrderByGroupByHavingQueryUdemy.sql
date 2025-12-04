SELECT * FROM Person.Address

SELECT TOP (10) AddressID, City, ModifiedDate
FROM Person.Address

SELECT AddressID, City, ModifiedDate
FROM Person.Address

---Using WHERE

SELECT AddressID, City, ModifiedDate
FROM Person.Address
WHERE PostalCode = '98011'

SELECT AddressID, City, ModifiedDate
FROM Person.Address
WHERE PostalCode != '98011'

SELECT COUNT (*) FROM Person.Address WHERE PostalCode != '98011'

SELECT * FROM Person.Address WHERE ModifiedDate = '2013-11-08 00:00:00.000'

SELECT * FROM Person.Person WHERE FirstName Like 'MAT%'

SELECT * FROM Person.Person WHERE LastName Like '%EW'

SELECT MAX(Rate) as PayRate From HumanResources.EmployeePayHistory

SELECT MIN(Rate) as PayRate From HumanResources.EmployeePayHistory

SELECT * FROM Production.ProductCostHistory WHERE StartDate = '2013-05-30 00:00:00.000' AND StandardCost >= 200.00

SELECT * FROM Production.ProductCostHistory WHERE StartDate = '2013-05-30 00:00:00.000' AND StandardCost >= 200.00 OR ProductId > 800

SELECT * FROM Production.ProductCostHistory WHERE EndDate IS NULL

SELECT * FROM Production.ProductCostHistory WHERE EndDate IS NOT NULL

---------------------------------------------------------------------

SELECT * FROM HumanResources.EmployeePayHistory ORDER BY rate

SELECT * FROM HumanResources.EmployeePayHistory ORDER BY rate DESC

SELECT * FROM HumanResources.EmployeePayHistory ORDER BY rate ASC

SELECT * FROM HumanResources.EmployeePayHistory WHERE ModifiedDate >= '2010-06-30 00:00:00.000' ORDER BY ModifiedDate DESC

SELECT * FROM HumanResources.EmployeePayHistory WHERE ModifiedDate >= '2014' ORDER BY ModifiedDate DESC

---------------------------------------------------------------------

SELECT COUNT (*) FROM Person.Address WHERE PostalCode != '98011'

SELECT * FROM Person.Address WHERE PostalCode != '98011'

SELECT COUNT (*), PostalCode FROM Person.Address GROUP BY PostalCode

SELECT COUNT (*), City, PostalCode FROM Person.Address GROUP BY City, PostalCode ORDER BY City DESC

---------------------------------------------------------------------

SELECT COUNT(1) AS CountOfProduct, Color FROM Production.Product WHERE Color = 'Yellow' GROUP BY Color

SELECT COUNT(1) AS CountOfProduct, Color FROM Production.Product GROUP BY Color HAVING Color = 'Yellow' 

SELECT COUNT(1) AS CountOfProduct, Color, Size FROM Production.Product GROUP BY Color, Size HAVING Size >= '44' 


