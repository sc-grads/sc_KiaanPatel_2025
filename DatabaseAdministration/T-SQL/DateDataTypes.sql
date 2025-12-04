declare @mydate as datetime = '2015-06-24 12:34:56.124'
select @mydate as MyDate

declare @mydate2 as datetime2 = '20150624 12:34:56.124'
select @mydate2 as MyDate

select datefromparts(2015, 06, 24) as ThisDate
select datetime2fromparts(2015, 06, 24, 12, 34, 56,124,5) as ThatDate
select year(@mydate) as MyYear, month(@mydate) as Month, day(@mydate) as myDay