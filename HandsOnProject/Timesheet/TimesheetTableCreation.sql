CREATE TABLE Timesheet_Staging (
    StagingID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100),
    Date DATE ,
    DayOfWeek NVARCHAR(50) ,
    Client NVARCHAR(50) ,
    ClientProjectName NVARCHAR(100) ,
    Description NVARCHAR(100) ,
    Billable NVARCHAR(50) ,
    Comments NVARCHAR(255),
    TotalHours DECIMAL(5,2) ,
    StartTime TIME(0) ,
    EndTime TIME(0) ,
    CONSTRAINT CheckTimeOrderStaging CHECK (EndTime > StartTime),
    CONSTRAINT CheckTotalHoursStaging CHECK (TotalHours >= 0 AND TotalHours <= 24),
    CONSTRAINT TimesheetStagingUniqueEntry UNIQUE (EmployeeName, Date, StartTime, EndTime)
);
drop table Timesheet_Staging
select * from Timesheet_Staging

CREATE TABLE Timesheet (
    TimesheetID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
	ClientID INT FOREIGN KEY REFERENCES Client(ClientID),
    Date DATE ,
    DayOfWeek NVARCHAR(50) ,
    ClientProjectName NVARCHAR(100) ,
    Description NVARCHAR(100) ,
    Billable NVARCHAR(50) ,
    Comments NVARCHAR(255),
    TotalHours DECIMAL(5,2) ,
    StartTime TIME(0) ,
    EndTime TIME(0) ,
    CONSTRAINT CheckTimeOrder CHECK (EndTime > StartTime),
    CONSTRAINT CheckTotalHours CHECK (TotalHours >= 0 AND TotalHours <= 24),
    CONSTRAINT TimesheetUniqueEntry UNIQUE (EmployeeID, Date, StartTime, EndTime)
);
select * from Timesheet
truncate table Timesheet
drop table Timesheet


CREATE TABLE AuditLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    TableName NVARCHAR(50) NOT NULL,
    Timestamp DATETIME NOT NULL DEFAULT GETDATE(),
    EmployeeID INT,
    UserName NVARCHAR(50) NOT NULL,
    Details NVARCHAR(255)
);

CREATE TABLE AuditLog_Staging (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    TableName NVARCHAR(50) NOT NULL,
    Timestamp DATETIME NOT NULL DEFAULT GETDATE(),
    EmployeeID NVARCHAR(100) NOT NULL,
    UserName NVARCHAR(50) NOT NULL,
    Details NVARCHAR(255)
);

select * from AuditLog_Staging


select * from AuditLog
drop table AuditLog

CREATE TABLE ErrorLog (
    ErrorID INT PRIMARY KEY IDENTITY(1,1),
    FilePath NVARCHAR(255),
    ErrorMessage NVARCHAR(4000),
    Timestamp DATETIME DEFAULT GETDATE()
);

drop table ErrorLog

CREATE NONCLUSTERED INDEX IX_Timesheets_Date_Employee
ON Timesheet(Date, EmployeeName);

select * from Timesheet_Staging

truncate table Timesheet_Staging

truncate table ErrorLog
select * from Errorlog