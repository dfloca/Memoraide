-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-11-10
-- Description:	Stored procedure to update users
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateUser] 
	@UserId INT,
	@FirstName VARCHAR(MAX),
	@Lastname VARCHAR(MAX),
	@UserName VARCHAR(MAX),
	@Email VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE dbo.Users
	SET FirstName = @FirstName,
		LastName = @LastName,
		UserName = @UserName,
		Email = @Email
	WHERE Id = @UserId
END