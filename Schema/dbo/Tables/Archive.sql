CREATE TABLE [dbo].[Archive] (
    [AID]    INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (64)  NULL,
    [Path]   NVARCHAR (512) NULL,
    [Extend] VARCHAR (8)    NULL,
    CONSTRAINT [PK_Archive] PRIMARY KEY CLUSTERED ([AID] ASC)
);

