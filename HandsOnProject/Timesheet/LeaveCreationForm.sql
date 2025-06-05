CREATE TABLE Leave (
    LeaveID INT PRIMARY KEY IDENTITY(1, 1),
    EmployeeName NVARCHAR(100) NOT NULL,
    TypeOfLeave NVARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    NumberOfDays INT NOT NULL,
    ApprovalObtained NVARCHAR(3) ,
    SickNote NVARCHAR(3) 
);

select * from Leave

drop table Leave