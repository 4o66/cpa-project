CREATE TABLE [dbo].[ratio_construct] (
    [id]   INT          IDENTITY (1, 1) NOT NULL,
    [name] VARCHAR (50) NOT NULL,
    [tag]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ratio_construct] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [n_unique] UNIQUE NONCLUSTERED ([tag] ASC)
);

