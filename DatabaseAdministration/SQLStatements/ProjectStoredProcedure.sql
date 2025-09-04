create procedure InsertUser
	@Name nvarchar(255),
	@Surname nvarchar(255),
	@Email nvarchar(255)
as
begin
	insert into [user] (Name, Surname, Email)
	values (@Name, @Surname, @Email);
end;