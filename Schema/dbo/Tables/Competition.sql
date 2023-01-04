CREATE TABLE [dbo].[Competition] (
    [CID]         INT            IDENTITY (1, 1) NOT NULL,
    [Organizer]   INT            NULL,
    [CCID]        INT            NULL,
    [Name]        NVARCHAR (128) NULL,
    [Description] NVARCHAR (MAX) NULL,
    [nLevel]      TINYINT        NULL,
    CONSTRAINT [PK_Competition] PRIMARY KEY CLUSTERED ([CID] ASC),
    CONSTRAINT [FK_Competition_CCID] FOREIGN KEY ([CCID]) REFERENCES [dbo].[Competition] ([CID]),
    CONSTRAINT [FK_Competition_Organizer] FOREIGN KEY ([Organizer]) REFERENCES [dbo].[Person] ([PID])
);

