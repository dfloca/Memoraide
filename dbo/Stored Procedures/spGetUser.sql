-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-11-10
-- Description:	Stored procedure to retrieve a user
-- =============================================
CREATE PROCEDURE [dbo].[spGetUser] 
	@UserId INT
AS
BEGIN

	SET NOCOUNT ON;

    SELECT *
	FROM dbo.Users
	WHERE Id = @UserId AND (IsDeleted = 0 OR IsDeleted IS NULL)
	  
END