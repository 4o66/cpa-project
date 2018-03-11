CREATE TABLE [dbo].[ratio] (
    [id]      INT           IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (50) NOT NULL,
    [type]    NCHAR (1)     NOT NULL,
    [user_id] INT           NULL,
    CONSTRAINT [PK_ratio] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [name_unique] UNIQUE NONCLUSTERED ([name] ASC)
);

