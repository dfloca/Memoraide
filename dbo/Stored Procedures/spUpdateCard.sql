-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-10-11
-- Description:	Stored procedure to update cards
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateCard] 
	@DeckId INT,
	@Question VARCHAR(MAX),
	@Answer VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE dbo.Cards
	SET @DeckId = DeckId, @Question = Question, @Answer = Answer
END