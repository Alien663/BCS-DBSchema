CREATE TABLE [dbo].[GameArchive] (
    [GID] INT NOT NULL,
    [AID] INT NOT NULL,
    CONSTRAINT [PK_GameArchive] PRIMARY KEY CLUSTERED ([GID] ASC, [AID] ASC),
    CONSTRAINT [FK_GameArchive_AID] FOREIGN KEY ([AID]) REFERENCES [dbo].[Archive] ([AID]),
    CONSTRAINT [FK_GameArchive_GID] FOREIGN KEY ([GID]) REFERENCES [dbo].[Game] ([GID])
);

