IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'Auto_user')
BEGIN
    CREATE LOGIN Auto_user WITH PASSWORD = 'Password123';
END
GO
USE AutoTest1;
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
