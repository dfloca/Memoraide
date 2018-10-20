CREATE TABLE [dbo].[Users] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]   VARCHAR (50)   NOT NULL,
    [LastName]    VARCHAR (50)   NOT NULL,
    [Email]       NVARCHAR (100) NOT NULL,
    [IsBanned]    BIT            NULL,
    [BannedDate]  DATETIME       NULL,
    [IsDeleted]   BIT            NULL,
    [DeletedDate] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

