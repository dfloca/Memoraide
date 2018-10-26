-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-25
-- Description:	Stored procedure to delete card
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteCard]
	@CardId INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE dbo.Cards
	SET IsDeleted = 1, DateDeleted = GETDATE()
	WHERE Id = @CardId;

END
GO