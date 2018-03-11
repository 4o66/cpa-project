CREATE TABLE [dbo].[statement] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [name]       NVARCHAR (50) NOT NULL,
    [year]       INT           NOT NULL,
    [quarter]    INT           NULL,
    [company_id] INT           NOT NULL,
    CONSTRAINT [PK_statement] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_statement_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id])
);



