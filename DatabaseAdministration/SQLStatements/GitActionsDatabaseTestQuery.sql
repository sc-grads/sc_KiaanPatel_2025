CREATE DATABASE MyDatabase;
GO
USE MyDatabase;

CREATE TABLE User (

	User_ID INT PRIMARY KEY IDENTITY(1,1),
	User_Name VARCHAR(50) NOT NULL,
	User_Surname VARCHAR(50) NOT NULL,
	User_Email VARCHAR(100) UNIQUE NOT NULL,
	User_PhoneNumber VARCHAR(10) UNIQUE,
	User_Address VARCHAR(100)
	User_IDNumber INT NOT NULL
);
GO

/*

comment added 

*/