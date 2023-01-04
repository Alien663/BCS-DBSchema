CREATE TABLE [dbo].[Person] (
    [PID]   INT           IDENTITY (1, 1) NOT NULL,
    [Sex]   BIT           NOT NULL,
    [Name]  NVARCHAR (64) NULL,
    [Birth] DATE          NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([PID] ASC)
);

