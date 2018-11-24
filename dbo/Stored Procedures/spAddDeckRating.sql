-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-11-24
-- Description:	Stored procedure to add new deck
--				rating
-- =============================================
CREATE PROCEDURE spAddDeckRating 
	@DeckId INT,
	@Rating INT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @AvgRating DECIMAL;

    INSERT INTO dbo.DeckRating (DeckId, Rating)
	VALUES (@DeckId, @Rating)

	SET @AvgRating = (
					SELECT AVG(dr.Rating) 
					FROM dbo.DeckRating dr
					WHERE dr.DeckId = @DeckId
				 )

	UPDATE dbo.Decks
	SET Rating = @AvgRating
	WHERE Id = @DeckId
END