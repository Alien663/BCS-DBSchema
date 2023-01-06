CREATE TABLE [dbo].[Game] (
    [GID]      INT             IDENTITY (1, 1) NOT NULL,
    [CID]      INT             NOT NULL,
    [Umpire]   INT             NULL,
    [Remark]   NVARCHAR (1024) NULL,
    [State]    TINYINT         DEFAULT ((0)) NOT NULL,
    [GameTime] DATETIME        NULL,
    CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED ([GID] ASC),
    CONSTRAINT [FK_Game_CID] FOREIGN KEY ([CID]) REFERENCES [dbo].[Competition] ([CID]),
    CONSTRAINT [FK_Game_Umpire] FOREIGN KEY ([Umpire]) REFERENCES [dbo].[Person] ([PID])
);



