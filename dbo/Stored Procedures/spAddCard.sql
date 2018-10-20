-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-11
-- Description:	Stored procedure to add new cards
-- =============================================
CREATE PROCEDURE spAddCard 
	@DeckId INT,
	@Question VARCHAR(MAX),
	@Answer VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
	VALUES (@DeckId, @Question, @Answer, GETDATE())
END
