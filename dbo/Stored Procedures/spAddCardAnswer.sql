-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-10-11
-- Description:	Stored procedure to add new card answers
-- =============================================
CREATE PROCEDURE [dbo].[spAddCardAnswer] 
	@UserId INT,
	@DeckId INT,
	@CorrectAnswer BIT,
	@NextReviewDate DateTime
AS
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.CardAnswers(UserId, DeckId, CorrectAnswer, DateAnswered, NextReviewDate)
	VALUES (@UserId, @DeckId, @CorrectAnswer, GETDATE(), @NextReviewDate)
END


