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

    INSERT INTO dbo.Decks ([Name], UserId, DateCreated)
	VALUES (@Name, @UserId, GETDATE())
END
