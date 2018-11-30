-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-11-10
-- Description:	Stored procedure to add new users
-- =============================================
CREATE PROCEDURE [dbo].[spAddUser] 
	@FirstName VARCHAR(MAX),
	@Lastname VARCHAR(MAX),
	@UserName VARCHAR(MAX),
	@Email VARCHAR(MAX),
	@Password VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.Users (FirstName, LastName, UserName, Email, [Password], DateCreated)
	VALUES (@FirstName, @Lastname, @UserName, @Email, @Password, GETDATE())
END