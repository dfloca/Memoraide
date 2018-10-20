CREATE TABLE [dbo].[UserDecks] (
    [Id]     INT IDENTITY (1, 1) NOT NULL,
    [UserId] INT NOT NULL,
    [DeckId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserDecks_DeckId] FOREIGN KEY ([DeckId]) REFERENCES [dbo].[Decks] ([Id]),
    CONSTRAINT [FK_UserDecks_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

