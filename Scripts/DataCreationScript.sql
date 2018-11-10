
USE Memoraide
GO;

-------------------------------------------------------Users
INSERT INTO dbo.Users (FirstName, LastName, Email, Username, [Password])
VALUES ('Bigshot', 'Smartypants', 'bigs@pants.com', 'bigs', 'bigs1234')

INSERT INTO dbo.Users (FirstName, LastName, Email, Username, [Password])
VALUES ('Edgar', 'Poe', 'mr.poe@raven.com', 'theraven', '1quothe2')


INSERT INTO dbo.Users (FirstName, LastName, Email, Username, [Password])
VALUES ('Elon', 'Musk', 'e.musk@space.com', 'spaceman', 'iloveanime')


INSERT INTO dbo.Users (FirstName, LastName, Email, Username, [Password])
VALUES ('Sun', 'Tzu', 'sun.tzu@ancientchina.ac', 'war_guy123', 'artist456')

--SELECT * FROM dbo.Users;

-------------------------------------------------------Decks
INSERT INTO dbo.Decks (Name, UserId, DateCreated)
VALUES ('Capitals', 1, GETDATE())

--SELECT * FROM dbo.Decks;

-------------------------------------------------------UserDecks
INSERT INTO dbo.UserDecks (UserId, DeckId)
VALUES (1, 1)

-------------------------------------------------------Cards
INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
VALUES (1, 'The capital of Canada', 'Ottawa', GETDATE())

INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
VALUES (1, 'The capital of Argentina', 'Buenos Aires', GETDATE())

INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
VALUES (1, 'The capital of Spain', 'Madrid', GETDATE())

INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
VALUES (1, 'The capital of Ireland', 'Dublin', GETDATE())

INSERT INTO dbo.Cards (DeckId, Question, Answer, DateCreated)
VALUES (1, 'The capital of China', 'Beijing', GETDATE())

--SELECT * FROM dbo.Cards;

-------------------------------------------------------Roles
INSERT INTO dbo.Roles (Name, IsActive)
VALUES ('Admin', 1)

INSERT INTO dbo.Roles (Name, IsActive)
VALUES ('User', 1)

-------------------------------------------------------UserRoles
INSERT INTO dbo.UserRoles (UserId, RoleId, IsActive)
VALUES (1, 2, 1)

INSERT INTO dbo.UserRoles (UserId, RoleId, IsActive)
VALUES (2, 2, 1)

INSERT INTO dbo.UserRoles (UserId, RoleId, IsActive)
VALUES (3, 2, 1)

INSERT INTO dbo.UserRoles (UserId, RoleId, IsActive)
VALUES (4, 2, 1)


GO
