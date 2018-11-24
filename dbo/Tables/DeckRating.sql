CREATE TABLE [dbo].[DeckRating]
(
	[Id] INT IDENTITY(1,1),
	[DeckId] INT NOT NULL,
	[Rating] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DeckRating_CardId] FOREIGN KEY ([DeckId]) REFERENCES [dbo].[Decks] ([Id])
)
