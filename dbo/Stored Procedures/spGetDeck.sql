
-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-26
-- Description:	Stored procedure to retrieve a deck
-- =============================================
CREATE PROCEDURE [dbo].[spGetDeck] 
	@DeckId INT
AS
BEGIN

	SET NOCOUNT ON;

    SELECT *
	FROM dbo.Decks
	WHERE Id = @DeckId AND (IsDeleted = 0 OR IsDeleted IS NULL)
	  
END

