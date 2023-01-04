CREATE TABLE [dbo].[CompetitionArchive] (
    [CID] INT NOT NULL,
    [AID] INT NOT NULL,
    CONSTRAINT [PK_CompetitionArchive] PRIMARY KEY CLUSTERED ([CID] ASC, [AID] ASC),
    CONSTRAINT [FK_Competition_AID] FOREIGN KEY ([AID]) REFERENCES [dbo].[Archive] ([AID]),
    CONSTRAINT [FK_Competition_CID] FOREIGN KEY ([CID]) REFERENCES [dbo].[Competition] ([CID])
);

