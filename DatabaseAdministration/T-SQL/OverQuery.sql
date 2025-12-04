select A.EmployeeNumber, A.AttendanceMonth, A.NumberAttendance
,sum(A.NumberAttendance) over() as TotalAttendance,
convert(decimal(18,2),A.NumberAttendance) / sum(A.NumberAttendance) over() * 100.0000 as PercentageAttendance
from tblEmployee as E join tblAttendance as A
on E.EmployeeNumber = A.EmployeeNumber
--use over to help get percentages and work with think
--define the set of rows for calculations like ranking, cumulative totals, or moving averages

select sum(NumberAttendance) from tblAttendance

select A.EmployeeNumber, A.AttendanceMonth, A.NumberAttendance
from tblEmployee as E join tblAttendance as A
on E.EmployeeNumber = A.EmployeeNumber
