CREATE TABLE [dbo].[Cards] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [DeckId]      INT           NOT NULL,
    [Question]    VARCHAR (MAX) NOT NULL,
    [Answer]      VARCHAR (MAX) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [IsDeleted]   BIT           NULL,
    [DateDeleted] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DeckId] FOREIGN KEY ([DeckId]) REFERENCES [dbo].[Decks] ([Id])
);

