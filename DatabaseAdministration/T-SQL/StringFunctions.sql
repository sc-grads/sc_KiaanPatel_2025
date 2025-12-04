declare @charASCII as varchar(10) = 'hellothere'
declare @charUnicode as nvarchar(10) = 'helloʢ'

select left(@charASCII, 2) as myASCII, right(@charUnicode, 2) as myUnicode
select substring(@charASCII, 3, 2) as middleLetters
select ltrim(rtrim(@charASCII)) as TRIM
select replace(@charASCII,'l','L') as myReplace
select upper(@charASCII) as myUpper
select lower(@charASCII) as myLower