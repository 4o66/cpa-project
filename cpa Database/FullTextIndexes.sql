CREATE FULLTEXT INDEX ON [dbo].[article]
    ([text] LANGUAGE 1033, [title] LANGUAGE 1033)
    KEY INDEX [ui_article]
    ON [ft];

