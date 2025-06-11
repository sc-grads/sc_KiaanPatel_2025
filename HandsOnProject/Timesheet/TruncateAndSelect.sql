truncate table Timesheet_Staging
truncate table Timesheet
truncate table Leave_Staging
truncate table Leave
truncate table AuditLog
truncate table AuditLog_Staging

select * from Timesheet_Staging
select * from Timesheet
select * from Leave_Staging
select * from Leave
select * from AuditLog
select * from AuditLog_Staging
select * from ErrorLog