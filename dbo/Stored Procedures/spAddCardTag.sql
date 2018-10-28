-- ===================================================
-- Author:		Garrett Fraser
-- Create date: 2018-10-11
-- Description:	Stored procedure to add new card tags
-- ===================================================
CREATE PROCEDURE [dbo].[spAddCardTag] 
	@CardId INT,
	@Tag VARCHAR(MAX)
AS
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.CardTags (CardId, Tag)
	VALUES (@CardId, @Tag)
END