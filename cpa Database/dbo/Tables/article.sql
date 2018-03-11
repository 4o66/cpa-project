CREATE TABLE [dbo].[article] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [company_id] INT            NOT NULL,
    [source]     NVARCHAR (MAX) NULL,
    [date]       DATE           NULL,
    [url]        NVARCHAR (MAX) NOT NULL,
    [text]       NVARCHAR (MAX) NULL,
    [title]      NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_article] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_article_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ui_article]
    ON [dbo].[article]([id] ASC);

