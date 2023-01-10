CREATE TABLE [dbo].[Team] (
    [TID]         INT           IDENTITY (1, 1) NOT NULL,
    [CID]         INT           NOT NULL,
    [Name]        NVARCHAR (64) NULL,
    [Description] VARCHAR (256) NULL,
    [State]       TINYINT       NULL,
    CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ([TID] ASC),
    CONSTRAINT [FK_Team_CID] FOREIGN KEY ([CID]) REFERENCES [dbo].[Competition] ([CID])
);

