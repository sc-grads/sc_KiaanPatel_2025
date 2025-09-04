-- Step 1: Drop the AutoTest database if it exists (to start fresh)
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTestDB')
BEGIN
    ALTER DATABASE AutoTestDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE AutoTestDB;
END
GO

-- Step 2: Create the AutoTest database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTestDB')
BEGIN
    CREATE DATABASE AutoTestDB;
END
GO

-- Step 3: Create the Auto_user login with Password123 and set default database to AutoTest
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'Auto_user')
BEGIN
    CREATE LOGIN Auto_user WITH PASSWORD = 'Password123', DEFAULT_DATABASE = AutoTestDB;
END
ELSE
BEGIN
    ALTER LOGIN Auto_user WITH PASSWORD = 'Password123', DEFAULT_DATABASE = AutoTestDB;
END
GO

-- Step 4: Map the Auto_user login to the AutoTest database and grant db_owner
USE AutoTestDB;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'Auto_user')
BEGIN
    CREATE USER Auto_user FOR LOGIN Auto_user;
END
GO
ALTER ROLE db_owner ADD MEMBER Auto_user;
GO

-- Step 5: Grant sysadmin role to Auto_user (full access to SQL Server)
USE master;
GO
ALTER SERVER ROLE sysadmin ADD MEMBER Auto_user;
GO

-- Step 6: Create the user table in the AutoTest database
USE AutoTestDB;
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[user] (
        Name VARCHAR(50) NOT NULL,
        Surname VARCHAR(50) NOT NULL,
        Email VARCHAR(100) NOT NULL
    );
END
GO

-- Step 7: Create the InsertUser stored procedure
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertUser]') AND type in (N'P', N'PC'))
BEGIN
    EXEC('
    CREATE PROCEDURE [dbo].[InsertUser]
        @Name VARCHAR(50),
        @Surname VARCHAR(50),
        @Email VARCHAR(100)
    AS
    BEGIN
        INSERT INTO [dbo].[user] (Name, Surname, Email)
        VALUES (@Name, @Surname, @Email);
    END
    ');
END
GO

-- Step 8: Insert sample data using the stored procedure
-- Clear the table first to avoid duplicates
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
    TRUNCATE TABLE [dbo].[user];
END
GO

-- Insert the sample data
EXEC [dbo].[InsertUser] 'Jack', 'Doe', 'jack.doe@example.com';
EXEC [dbo].[InsertUser] 'Jeff', 'Smith', 'jeff.smith@example.com';
EXEC [dbo].[InsertUser] 'Alan', 'Walker', 'alan.walker@example.com';
GO

-- Step 9: Verify the data (optional, for confirmation)
SELECT * FROM [dbo].[user];
GO
