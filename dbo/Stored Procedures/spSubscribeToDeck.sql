-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-11-14
-- Description:	Stored procedure to subscribe 
--				to another user's deck
--				Subscribe: a copy of a deck
-- =============================================
CREATE PROCEDURE [dbo].[spSubscribeToDeck] 
	@UserId INT,
	@DeckId INT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Output TABLE (ID INT);

    SELECT d.Name, d.DateCreated, d.IsDeleted, d.DateDeleted INTO #tmp 
	FROM dbo.Decks d
	WHERE d.Id = @DeckId;

	INSERT INTO dbo.Decks (Name, UserId, DateCreated, IsDeleted, DateDeleted)
	OUTPUT inserted.Id INTO @Output(ID)
	SELECT t.Name, @UserId, t.DateCreated, t.IsDeleted, t.DateDeleted FROM #tmp t;

	INSERT INTO dbo.UserDecks (UserId, DeckId)
	VALUES (@UserId, (SELECT ID FROM @Output));
END