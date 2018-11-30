-- =============================================
-- Author:		Garrett Fraser
-- Create date: GETDATE()
-- Description:	Stored procedure to retrieve a user by username
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserByUsername] 
	@UserName VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    SELECT TOP 1 *
	FROM dbo.Users
	WHERE Username = @UserName AND (IsDeleted = 0 OR IsDeleted IS NULL)
	  
END