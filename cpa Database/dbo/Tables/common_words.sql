CREATE TABLE [dbo].[common_words] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [word] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_commonwords] PRIMARY KEY CLUSTERED ([id] ASC)
);

