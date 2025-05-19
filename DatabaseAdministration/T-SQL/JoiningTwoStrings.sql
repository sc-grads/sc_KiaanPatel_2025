declare @fname as nvarchar(20)
declare @mname as nvarchar(20)
declare @lname as nvarchar(20)

set @fname = 'Sarah'
select @mname = 'Jane'
set @lname = 'Michigan'

select @fname + iif(@mname is null, '', ' ' + @mname) + ' ' + @lname as FullName
select @fname + case when @mname is null then  '' else ' ' + @mname end + ' ' + @lname as FullName
select @fname + coalesce(' ' + @mname,'') + ' ' + @lname as FullName
select concat(@fname, @mname, @lname) as FullName