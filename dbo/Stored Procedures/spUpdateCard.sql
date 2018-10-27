-- =============================================
-- Author:		Daniel Floca
-- Create date:	2018-10-26
-- Description:	Stored procedure to update cards
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateCard] 
	@DeckId INT,
	@Question VARCHAR(MAX),
	@Answer VARCHAR(MAX),
	@IsDeleted BIT
AS
BEGIN
 	
	SET NOCOUNT ON;

    UPDATE dbo.Cards
	SET DeckId = @DeckId,
		Question = @Question,
		Answer = @Answer,
		IsDeleted = @IsDeleted,
		DateDeleted = CASE 
						WHEN @IsDeleted = 1 THEN GETDATE()
						ELSE NULL
					  END
END 