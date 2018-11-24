-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-11-24
-- Description:	Stored procedure to add new card
--				rating
-- =============================================
CREATE PROCEDURE [dbo].[spAddCardRating] 
	@CardId INT,
	@Rating INT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @AvgRating DECIMAL;

    INSERT INTO dbo.CardRating (CardId, Rating)
	VALUES (@CardId, @Rating)

	SET @AvgRating = (
					SELECT AVG(cr.Rating) 
					FROM dbo.CardRating cr
					WHERE cr.CardId = @CardId
				 )

	UPDATE dbo.Cards
	SET Rating = @AvgRating
	WHERE Id = @CardId
END