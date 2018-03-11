CREATE TABLE [dbo].[user] (
    [id]       INT           NOT NULL,
    [username] NVARCHAR (50) NOT NULL,
    [salt]     BINARY (50)   NOT NULL,
    [hash]     BINARY (50)   NOT NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([id] ASC)
);

