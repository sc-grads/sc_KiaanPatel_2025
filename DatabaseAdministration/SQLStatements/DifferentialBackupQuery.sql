BACKUP DATABASE [AdventureWorks2022] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Udemy_Backup_File\AdventureWorks2022Diff' WITH  DIFFERENTIAL , 
NOFORMAT, NOINIT, NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
