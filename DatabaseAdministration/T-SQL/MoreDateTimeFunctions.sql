declare @mydate as datetime = '2015-05-25 01:02:03.456' --this will fail due to conflicting type conversions
select 'the date and time is: ' + @mydate

declare @mydate as datetime = '2015-05-25 01:02:03.456'
select 'the date and time is: ' + convert(nvarchar(20), @mydate) as MyConvertedDate


declare @mydate as datetime = '2015-05-25 01:02:03.456'
select 'the date and time is: ' + cast(@mydate as nvarchar(20)) as MyCastedDate

select try_convert(date,'Thursday, 25 June 2015') as MyConvertedDate
select parse('Thursday, 25 June 2015' as date) as MyParsedDate
select try_parse('Jueves, 25 de junio de 2015' as date using 'en-US') as MySpanishParsedDate --parse converts from string to date 

select format(cast('2015-06-25 01:02:03.456' as datetime), 'D') as MyFormattedLongDate --format converts from datetime to string
select format(cast('2015-06-25 01:02:03.456' as datetime), 'd') as MyFormattedLongDate
select format(cast('2015-06-25 01:02:03.456' as datetime), 'dd-mm-yyyy') as MyFormattedLongDate
select format(cast('2015-06-25 01:02:03.456' as datetime), 'D') as MyFormattedInternationalLongDate