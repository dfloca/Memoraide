CREATE TABLE [dbo].[Users] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]   VARCHAR (50)   NOT NULL,
    [LastName]    VARCHAR (50)   NOT NULL,
    [Email]       NVARCHAR (100) NOT NULL,
    [Username]	  VARCHAR(50) NOT NULL, 
    [Password]	  NVARCHAR(MAX) NOT NULL, 
    [DateCreated] DATETIME		 NULL, 
    [IsBanned]    BIT            NULL,
    [DateBanned]  DATETIME       NULL,
    [IsDeleted]   BIT            NULL,
    [DateDeleted] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

