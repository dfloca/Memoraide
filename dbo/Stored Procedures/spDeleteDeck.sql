-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-27
-- Description:	Stored procedure to delete a deck
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteDeck] 
	@DeckId INT
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE dbo.Decks
	SET IsDeleted = 1, DateDeleted = GETDATE()
	WHERE Id = @DeckId;
END
GO