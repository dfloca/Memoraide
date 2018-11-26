﻿CREATE TABLE [dbo].[CardAnswers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CardId] [int] NOT NULL,
	[CorrectAnswer] [bit] NOT NULL,
	[DateAnswered] [datetime] NOT NULL,
	[NextReviewDate] [datetime] NOT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


