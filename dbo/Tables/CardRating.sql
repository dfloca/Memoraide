CREATE TABLE [dbo].[CardRating]
(
	[Id] INT IDENTITY(1,1),
	[CardId] INT NOT NULL,
	[Rating] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CardRating_CardId] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Cards] ([Id])
)
