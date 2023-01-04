CREATE TABLE [dbo].[GamePerson] (
    [GID]   INT     NOT NULL,
    [PID]   INT     NOT NULL,
    [Score] TINYINT NULL,
    CONSTRAINT [PK_GamePerson] PRIMARY KEY CLUSTERED ([GID] ASC, [PID] ASC),
    CONSTRAINT [FK_GamePerson_GID] FOREIGN KEY ([GID]) REFERENCES [dbo].[Game] ([GID]),
    CONSTRAINT [FK_GamePerson_PID] FOREIGN KEY ([PID]) REFERENCES [dbo].[Person] ([PID])
);

