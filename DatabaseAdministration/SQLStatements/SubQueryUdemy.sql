SELECT * FROM HumanResources.EmployeePayHistory
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.EmployeePayHistory WHERE rate > 60)

SELECT * FROM HumanResources.EmployeePayHistory
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.EmployeePayHistory WHERE rate > 60)

SELECT * FROM HumanResources.EmployeePayHistory
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.EmployeePayHistory WHERE rate > 60)

SELECT * FROM Production.Product
WHERE ProductID IN (SELECT ProductID FROM Production.ProductInventory WHERE Quantity >= 300)