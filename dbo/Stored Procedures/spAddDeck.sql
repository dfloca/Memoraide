-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-26
-- Description:	Stored procedure to add new decks
-- =============================================
CREATE PROCEDURE spAddDeck 
	@Name VARCHAR(50),
	@UserId INT
AS
BEGIN

	SET NOCOUNT ON;

    DECLARE @tmp TABLE (Id INT);

    INSERT INTO dbo.Decks ([Name], UserId, DateCreated)
	OUTPUT inserted.Id INTO @tmp(Id)
	VALUES (@Name, @UserId, GETDATE())

	INSERT INTO dbo.UserDecks (UserId, DeckId)
	SELECT @UserId, t.Id
	FROM @tmp t
END
