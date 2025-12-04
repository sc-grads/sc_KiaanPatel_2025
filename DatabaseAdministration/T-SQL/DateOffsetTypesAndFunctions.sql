declare @mydateoffset as datetimeoffset(2) = '2015-06-25 01:02:03.456 +05:30' --uses 8-10 bytes
select @mydateoffset as MyDateOffset
go

declare @mydate as datetime2 = '2015-06-25 01:02:03.456'
select TODATETIMEOFFSET(@mydate, '+05:30') as MyDateOffset

select DATETIME2FROMPARTS(2015,06,25,1,2,3,456,3)
select DATETIMEOFFSETFROMPARTS(2015,06,25,1,2,3,456,5,3,3) as MyDateOffset

select SYSDATETIMEOFFSET() as TimeNowWithOffset
select SYSUTCDATETIME() as TimeNowUtc

declare @mydateoffset2 as datetimeoffset = '2015-06-25 01:02:03.456 +05:30'
select SWITCHOFFSET(@mydateoffset2,'-05:00') as MyDateOffsetTexas
