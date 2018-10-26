
-- =============================================
-- Author:		Daniel Floca
-- Create date: 2018-10-20
-- Description:	Stored procedure to retrieve a card
-- =============================================
CREATE PROCEDURE [dbo].[spGetCard] 
	@CardId INT
AS
BEGIN

	SET NOCOUNT ON;

    SELECT *
	FROM dbo.Cards
	WHERE Id = @CardId AND (IsDeleted = 0 OR IsDeleted IS NULL)
	  
END

