-- =============================================
-- Author:		Daniel Floca
-- Create date:	2018-10-26
-- Description:	Stored procedure to update cards
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateCard] 
	@CardId INT,
	@DeckId INT,
	@Question VARCHAR(MAX),
	@Answer VARCHAR(MAX)
AS
BEGIN
 	
	SET NOCOUNT ON;

    UPDATE dbo.Cards
	SET DeckId = @DeckId,
		Question = @Question,
		Answer = @Answer
	WHERE Id = @CardId
END 