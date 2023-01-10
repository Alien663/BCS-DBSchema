CREATE TABLE [dbo].[Participate] (
    [TID] INT NOT NULL,
    [PID] INT NOT NULL,
    CONSTRAINT [PK_Participate] PRIMARY KEY CLUSTERED ([TID] ASC, [PID] ASC),
    CONSTRAINT [FK_Participate_PID] FOREIGN KEY ([PID]) REFERENCES [dbo].[Person] ([PID]),
    CONSTRAINT [FK_Participate_TID] FOREIGN KEY ([TID]) REFERENCES [dbo].[Team] ([TID])
);



