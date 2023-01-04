CREATE TABLE [dbo].[Participate] (
    [CID]   INT     NOT NULL,
    [PID]   INT     NOT NULL,
    [State] TINYINT NULL,
    CONSTRAINT [PK_Participate] PRIMARY KEY CLUSTERED ([CID] ASC, [PID] ASC),
    CONSTRAINT [FK_Participate_CID] FOREIGN KEY ([CID]) REFERENCES [dbo].[Competition] ([CID]),
    CONSTRAINT [FK_Participate_PID] FOREIGN KEY ([PID]) REFERENCES [dbo].[Person] ([PID])
);

