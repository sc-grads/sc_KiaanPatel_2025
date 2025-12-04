CREATE TABLE Employee(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100)
);

CREATE TABLE Client(
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(100)
);

drop table Employee
drop table Client

select * from Employee
select * from Client

truncate table Client
truncate table Employee


select * from Leave
select * from Timesheet

truncate table Timesheet