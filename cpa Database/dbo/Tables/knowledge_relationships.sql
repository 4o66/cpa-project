CREATE TABLE [dbo].[knowledge_relationships] (
    [semantic]     NVARCHAR (50) NOT NULL,
    [obj_a]        NVARCHAR (50) NOT NULL,
    [obj_b]        NVARCHAR (50) NOT NULL,
    [relationship] NVARCHAR (50) NULL,
    CONSTRAINT [PK_knowledge_relationships] PRIMARY KEY CLUSTERED ([semantic] ASC, [obj_a] ASC, [obj_b] ASC),
    CONSTRAINT [FK_knowledge_relationships_object] FOREIGN KEY ([obj_a]) REFERENCES [dbo].[object] ([name]),
    CONSTRAINT [FK_knowledge_relationships_object1] FOREIGN KEY ([obj_b]) REFERENCES [dbo].[object] ([name])
);



