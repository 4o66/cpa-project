CREATE TABLE [dbo].[ratio_detail] (
    [ratio_id]           INT       NOT NULL,
    [position]           NCHAR (1) NOT NULL,
    [equation_order]     INT       NOT NULL,
    [ratio_construct_id] INT       NOT NULL,
    [operator]           NCHAR (1) NOT NULL,
    CONSTRAINT [PK_ratio_detail] PRIMARY KEY CLUSTERED ([ratio_id] ASC, [position] ASC, [equation_order] ASC),
    CONSTRAINT [FK_ratio_detail_ratio] FOREIGN KEY ([ratio_id]) REFERENCES [dbo].[ratio] ([id]),
    CONSTRAINT [FK_ratio_detail_ratio_construct] FOREIGN KEY ([ratio_construct_id]) REFERENCES [dbo].[ratio_construct] ([id])
);



