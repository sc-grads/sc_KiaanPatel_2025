IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest1')
BEGIN
    CREATE DATABASE AutoTest;
END
GO
