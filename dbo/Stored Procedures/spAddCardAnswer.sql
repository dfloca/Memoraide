-- =============================================
-- Author:		Garrett Fraser
-- Create date: 2018-10-11
-- Description:	Stored procedure to add new card answers
-- =============================================
CREATE PROCEDURE [dbo].[spAddCardAnswer] 
	@UserId INT,
	@CardId INT,
	@CorrectAnswer BIT,
	@NextReviewDate DateTime
AS
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.CardAnswers(UserId, CardId, CorrectAnswer, DateAnswered, NextReviewDate)
	VALUES (@UserId, @CardId, @CorrectAnswer, GETDATE(), @NextReviewDate)
END


