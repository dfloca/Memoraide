-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-27
-- Description:	Stored procedure to update decks
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateDeck]
	@DeckId INT, 
	@Name VARCHAR(50),
	@UserId INT
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE dbo.Decks
	SET Name = @Name, UserId = @UserId
	WHERE Id = @DeckId;
END
GO