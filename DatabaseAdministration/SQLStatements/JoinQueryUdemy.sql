SELECT * FROM dbo.Employee

SELECT * FROM dbo.Sales

SELECT * FROM dbo.Employee e
JOIN dbo.Sales s
ON e.EmpName = s.EmpName

SELECT e.EmpID, e.EmpName, s.SalesNum, s.ItemSold FROM dbo.Employee e
JOIN dbo.Sales s
ON e.EmpID = s.EmpID
ORDER BY e.EmpID

SELECT COUNT (s.SalesNum) as NumOfSales, e.EmpID, e.EmpName FROM dbo.Employee e
JOIN dbo.Sales s
ON e.EmpID = s.EmpID
GROUP BY e.EmpID, e.EmpName
