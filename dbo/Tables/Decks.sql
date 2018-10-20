CREATE TABLE [dbo].[Decks] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50) NOT NULL,
    [UserId]      INT          NOT NULL,
    [DateCreated] DATETIME     NOT NULL,
    [IsDeleted]   BIT          NULL,
    [DateDeleted] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

