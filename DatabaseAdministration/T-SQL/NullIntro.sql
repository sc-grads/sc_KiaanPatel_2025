declare @var as int = 4
select @var as myCol

declare @string as nvarchar(20)
select datalength(@string) as myString

declare @decimal as decimal(5,2)
select try_convert(decimal(5,2),1000)
select try_cast(1000 as decimal(5,2))