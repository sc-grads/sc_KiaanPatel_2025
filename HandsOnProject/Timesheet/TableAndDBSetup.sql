-- Database creation
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'TimesheetDB')
BEGIN
    CREATE DATABASE TimesheetDB;
    PRINT 'TimesheetDB created successfully.';
END
ELSE
BEGIN
    PRINT 'TimesheetDB already exists.';
END
GO

-- Switch to the TimesheetDB context
USE TimesheetDB;
GO

-- Employee Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Employee' AND type = 'U')
BEGIN
    CREATE TABLE Employee(
        EmployeeID INT PRIMARY KEY IDENTITY(1,1),
        EmployeeName NVARCHAR(100) NOT NULL
    );
    PRINT 'Employee table created successfully.';
END
ELSE
BEGIN
    PRINT 'Employee table already exists.';
END
GO

-- Client Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Client' AND type = 'U')
BEGIN
    CREATE TABLE Client(
        ClientID INT PRIMARY KEY IDENTITY(1,1),
        ClientName NVARCHAR(100) NOT NULL
    );
    PRINT 'Client table created successfully.';
END
ELSE
BEGIN
    PRINT 'Client table already exists.';
END
GO

-- Leave_Staging Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Leave_Staging' AND type = 'U')
BEGIN
    CREATE TABLE Leave_Staging (
        LeaveID INT PRIMARY KEY IDENTITY(1, 1),
        EmployeeName NVARCHAR(100) NOT NULL,
        TypeOfLeave NVARCHAR(50) NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE NOT NULL,
        NumberOfDays INT NOT NULL,
        ApprovalObtained NVARCHAR(3),
        SickNote NVARCHAR(3) 
    );
    PRINT 'Leave_Staging table created successfully.';
END
ELSE
BEGIN
    PRINT 'Leave_Staging table already exists.';
END
GO

-- Leave Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Leave' AND type = 'U')
BEGIN
    CREATE TABLE Leave (
        LeaveID INT PRIMARY KEY IDENTITY(1, 1),
        EmployeeID INT NOT NULL,
        TypeOfLeave NVARCHAR(50) NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE NOT NULL,
        NumberOfDays INT NOT NULL,
        ApprovalObtained NVARCHAR(3),
        SickNote NVARCHAR(3),
        CONSTRAINT FK_Leave_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    );
    PRINT 'Leave table created successfully.';
END
ELSE
BEGIN
    PRINT 'Leave table already exists.';
END
GO

-- Timesheet Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Timesheet' AND type = 'U')
BEGIN
    CREATE TABLE Timesheet (
        TimesheetID INT PRIMARY KEY IDENTITY(1,1),
        EmployeeID INT NOT NULL,
        ClientID INT NOT NULL,
        Date DATE,
        DayOfWeek NVARCHAR(50),
        ClientProjectName NVARCHAR(100),
        Description NVARCHAR(100),
        Billable NVARCHAR(50),
        Comments NVARCHAR(255),
        TotalHours DECIMAL(5,2),
        StartTime TIME(0),
        EndTime TIME(0),
        CONSTRAINT FK_Timesheet_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
        CONSTRAINT FK_Timesheet_Client FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
        CONSTRAINT CK_Timesheet_TimeOrder CHECK (EndTime > StartTime),
        CONSTRAINT CK_Timesheet_TotalHours CHECK (TotalHours >= 0 AND TotalHours <= 24),
        CONSTRAINT UQ_Timesheet_Entry UNIQUE (EmployeeID, Date, StartTime, EndTime)
    );
    PRINT 'Timesheet table created successfully.';
END
ELSE
BEGIN
    PRINT 'Timesheet table already exists.';
END
GO

-- Timesheet_Staging Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Timesheet_Staging' AND type = 'U')
BEGIN
    CREATE TABLE Timesheet_Staging (
        StagingID INT PRIMARY KEY IDENTITY(1,1),
        EmployeeName NVARCHAR(100),
        Date DATE,
        DayOfWeek NVARCHAR(50),
        Client NVARCHAR(50),
        ClientProjectName NVARCHAR(100),
        Description NVARCHAR(100),
        Billable NVARCHAR(50),
        Comments NVARCHAR(255),
        TotalHours DECIMAL(5,2),
        StartTime TIME(0),
        EndTime TIME(0),
        CONSTRAINT CK_TimesheetStaging_TimeOrder CHECK (EndTime > StartTime),
        CONSTRAINT CK_TimesheetStaging_TotalHours CHECK (TotalHours >= 0 AND TotalHours <= 24),
        CONSTRAINT UQ_TimesheetStaging_Entry UNIQUE (EmployeeName, Date, StartTime, EndTime)
    );
    PRINT 'Timesheet_Staging table created successfully.';
END
ELSE
BEGIN
    PRINT 'Timesheet_Staging table already exists.';
END
GO

-- AuditLog Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'AuditLog' AND type = 'U')
BEGIN
    CREATE TABLE AuditLog (
        AuditID INT PRIMARY KEY IDENTITY(1,1),
        Type NVARCHAR(225) NOT NULL,
        Month NVARCHAR(50),
        EmployeeID INT,
        Timestamp DATETIME DEFAULT GETDATE(),
        Details NVARCHAR(4000),
        CONSTRAINT FK_AuditLog_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    );
    PRINT 'AuditLog table created successfully.';
END
ELSE
BEGIN
    PRINT 'AuditLog table already exists.';
END
GO

-- AuditLog_Staging Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'AuditLog_Staging' AND type = 'U')
BEGIN
    CREATE TABLE AuditLog_Staging (
        AuditID INT PRIMARY KEY IDENTITY(1,1),
        Type NVARCHAR(225) NOT NULL,
        Month NVARCHAR(50),
        EmployeeID NVARCHAR(100),
        Timestamp DATETIME DEFAULT GETDATE(),
        Details NVARCHAR(4000)
    );
    PRINT 'AuditLog_Staging table created successfully.';
END
ELSE
BEGIN
    PRINT 'AuditLog_Staging table already exists.';
END
GO

-- ErrorLog Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'ErrorLog' AND type = 'U')
BEGIN
    CREATE TABLE ErrorLog (
        ErrorID INT PRIMARY KEY IDENTITY(1,1),
        FilePath NVARCHAR(255),
        ErrorMessage NVARCHAR(4000),
        Timestamp DATETIME DEFAULT GETDATE()
    );
    PRINT 'ErrorLog table created successfully.';
END
ELSE
BEGIN
    PRINT 'ErrorLog table already exists.';
END
GO

PRINT 'Database setup completed successfully.';
