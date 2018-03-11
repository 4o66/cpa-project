CREATE TABLE [dbo].[statement_detail] (
    [statement_id]       INT   NOT NULL,
    [line]               INT   NOT NULL,
    [ratio_construct_id] INT   NOT NULL,
    [value]              MONEY NOT NULL,
    CONSTRAINT [PK_statement_detail] PRIMARY KEY CLUSTERED ([statement_id] ASC, [line] ASC),
    CONSTRAINT [FK_statement_detail_ratio_construct] FOREIGN KEY ([ratio_construct_id]) REFERENCES [dbo].[ratio_construct] ([id]),
    CONSTRAINT [FK_statement_detail_statement] FOREIGN KEY ([statement_id]) REFERENCES [dbo].[statement] ([id])
);



