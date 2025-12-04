select 'My number is: ' + convert(varchar(20), 4567)
select 'My number is: ' + cast(4567 as varchar(20))

select 'My salray is $' + convert(varchar(20), 2345.6)
select 'My salray is $' + format(2345.6, 'C', 'en-US')
select format(2345.6,'C')