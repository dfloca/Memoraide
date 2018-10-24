CREATE TABLE [dbo].[CardTags]
(
	[Id] INT IDENTITY(1,1),
	CardId INT NOT NULL,
	TagId INT NOT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CardTags_CardId] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Cards] ([Id]),
    CONSTRAINT [FK_CardTags_TagId] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([Id])
)
