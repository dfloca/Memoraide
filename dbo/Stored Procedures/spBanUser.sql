-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-11-10
-- Description:	Stored procedure to ban users
-- =============================================
CREATE PROCEDURE [dbo].[spBanUser] 
	@UserId INT
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE dbo.Users
	SET IsBanned = 1,
		DateBanned = GETDATE()
	WHERE Id = @UserId
END


