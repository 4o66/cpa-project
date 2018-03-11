CREATE TABLE [dbo].[object] (
    [type]        INT           NOT NULL,
    [name]        NVARCHAR (50) NOT NULL,
    [plural]      NVARCHAR (50) NULL,
    [abreviation] NVARCHAR (50) NULL,
    CONSTRAINT [PK_object] PRIMARY KEY CLUSTERED ([name] ASC)
);



