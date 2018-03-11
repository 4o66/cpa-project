CREATE TABLE [dbo].[isp] (
    [obj_a]        NVARCHAR (50) NOT NULL,
    [obj_b]        NVARCHAR (50) NOT NULL,
    [relationship] NVARCHAR (50) NULL,
    CONSTRAINT [PK_isp] PRIMARY KEY CLUSTERED ([obj_a] ASC, [obj_b] ASC),
    CONSTRAINT [FK_isp_object] FOREIGN KEY ([obj_a]) REFERENCES [dbo].[object] ([name]),
    CONSTRAINT [FK_isp_object1] FOREIGN KEY ([obj_b]) REFERENCES [dbo].[object] ([name])
);



