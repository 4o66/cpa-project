CREATE TABLE [dbo].[company] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (50)  NOT NULL,
    [market]      NVARCHAR (50)  NULL,
    [symbol]      NVARCHAR (50)  NULL,
    [description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [S_Name] UNIQUE NONCLUSTERED ([symbol] ASC),
    CONSTRAINT [U_Name] UNIQUE NONCLUSTERED ([name] ASC)
);

