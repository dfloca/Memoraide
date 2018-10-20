﻿CREATE TABLE [dbo].[Roles] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (100) NOT NULL,
    [IsActive] BIT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

