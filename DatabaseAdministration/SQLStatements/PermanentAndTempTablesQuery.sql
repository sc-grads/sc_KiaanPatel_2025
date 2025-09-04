CREATE TABLE [AdventureWorks2022].[sales].[visits] (
	visit_id INT PRIMARY KEY IDENTITY (1, 1),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	visit_date DATETIME,
	phone VARCHAR(50) NOT NULL,
	store_id INT NOT NULL,
	FOREIGN KEY (store_id) REFERENCES sales.newstore (store_id)
)

CREATE TABLE [AdventureWorks2022].[sales].[newstore] (
	store_id INT NOT NULL,
	sales INT
)

---SELECT * FROM [AdventureWorks2022].[sales].[newstore]

---SELECT * FROM [AdventureWorks2022].[sales].[visits]

SELECT BusinessEntityID, FirstName, LastName, Title
INTO #TempPersonTable
FROM [AdventureWorks2022].[Person].[Person]
WHERE title= 'mr.'

SELECT * FROM #TempPersonTable

---Temporary Table can be created as many as we want in different sessions
