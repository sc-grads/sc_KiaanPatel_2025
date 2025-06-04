CREATE TABLE TimeSheets (
    EntryID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(50) ,
    Date DATE ,
    DayOfWeek NVARCHAR(50) ,
    Client NVARCHAR(50) ,
    ClientProjectName NVARCHAR(100) ,
    Description NVARCHAR(100) ,
    Billable NVARCHAR(50) , -- 1 = Billable, 0 = Non-billable
    Comments NVARCHAR(255),
    TotalHours DECIMAL(5,2) ,
    StartTime TIME(0) ,
    EndTime TIME(0) ,
    CONSTRAINT CheckTimeOrder CHECK (EndTime > StartTime),
    CONSTRAINT CheckTotalHours CHECK (TotalHours >= 0 AND TotalHours <= 24),
    CONSTRAINT TimesheetUniqueEntry UNIQUE (EmployeeName, Date, StartTime, EndTime)
);

drop table TimeSheets

CREATE TABLE AuditLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Operation VARCHAR(10) NOT NULL,
    TableName VARCHAR(50) NOT NULL,
    RecordID INT NOT NULL,
    Timestamp DATETIME NOT NULL DEFAULT GETDATE(),
    EmployeeName VARCHAR(100),
    UserName VARCHAR(50) NOT NULL,
    Details TEXT
);

CREATE TABLE ErrorLog (
    ErrorID INT PRIMARY KEY IDENTITY(1,1),
    FilePath VARCHAR(255),
    ErrorMessage TEXT,
    Timestamp DATETIME DEFAULT GETDATE()
);

CREATE NONCLUSTERED INDEX IX_TimeSheets_Date_Employee
ON TimeSheets(Date, EmployeeName);