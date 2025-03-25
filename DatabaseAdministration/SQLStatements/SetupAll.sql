IF EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest')
BEGIN
    ALTER DATABASE AutoTest SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE AutoTest;
END
GO
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest')
BEGIN
    CREATE DATABASE AutoTest;
END
GO
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'Auto_user')
BEGIN
    CREATE LOGIN Auto_user WITH PASSWORD = 'Password123', DEFAULT_DATABASE = AutoTest;
END
ELSE
BEGIN
    ALTER LOGIN Auto_user WITH PASSWORD = 'Password123', DEFAULT_DATABASE = AutoTest;
END
GO
USE AutoTest;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'Auto_user')
BEGIN
    CREATE USER Auto_user FOR LOGIN Auto_user;
END
GO
ALTER ROLE db_owner ADD MEMBER Auto_user;
GO
USE master;
GO
ALTER SERVER ROLE sysadmin ADD MEMBER Auto_user;
GO
USE AutoTest;
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
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
    TRUNCATE TABLE [dbo].[user];
END
GO
EXEC [dbo].[InsertUser] 'Jack', 'Doe', 'jack.doe@example.com';
EXEC [dbo].[InsertUser] 'Jeff', 'Smith', 'jeff.smith@example.com';
EXEC [dbo].[InsertUser] 'Alan', 'Walker', 'alan.walker@example.com';
GO
SELECT * FROM [dbo].[user];
GO
