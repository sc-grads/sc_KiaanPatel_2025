select current_timestamp as RightNow
select getdate() as RightNow
select sysdatetime() as RightNow
select dateadd(year,1,'2015-01-02 03:04:05') as myYear
select datepart(hour,'2015-01-02 03:04:05') as myHour
select datename(weekday, getdate()) as myAnswer
select datediff(Month, '2015-01-02 03:04:05', getdate()) as MonthsElapsed