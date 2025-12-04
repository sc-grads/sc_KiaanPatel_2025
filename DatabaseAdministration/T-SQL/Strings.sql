--String types

--char - works with ASCII range - 1 bytes
--varchar - works with ASCII range - 1 bytes (but it adds 2 bytes to the strings actual data length value, so use char if you know the string length)
--nchar - works with Unicode range - 2 bytes
--nvarchar works with Unicode range - 2 bytes (this also adds 2 to actual data length value)

--char
declare @char as char(10)
set @char = 'hello'
select @char, len(@char) as MyLength, datalength(@char) as MyDataLength

---varchar
declare @char as varchar(10)
set @char = 'hello'
select @char, len(@char) as MyLength, datalength(@char) as MyDataLength

--nchar
declare @char as nchar(10)
set @char = 'hello'
select @char, len(@char) as MyLength, datalength(@char) as MyDataLength

--nvarchar
declare @char as nvarchar(10)
set @char = N'helloΖ'
select @char, len(@char) as MyLength, datalength(@char) as MyDataLength