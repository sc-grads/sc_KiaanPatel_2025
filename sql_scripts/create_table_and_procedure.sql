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
