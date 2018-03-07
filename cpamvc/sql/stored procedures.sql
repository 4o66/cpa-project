--use cpa

--declare @rid as int
--declare @cid as int
--declare @year as int
--set @rid = 16
--set @cid = 4
--set @year = 2017

ALTER PROCEDURE getRatio @ratioID int,
@companyID int,
@year int

-- Given a year, company id and ratio id, returns the ratio, if possible
-- If a ratio would be invalid (zero in denominator) it reurns zero

AS
BEGIN
  DECLARE @ratio_calc TABLE (
    position varchar(1),
    equation_order int,
    ratio_construct_id int,
    operator varchar(1),
    value money
  )

  INSERT INTO @ratio_calc
    SELECT DISTINCT --r.name, 
      rd.position,
      rd.equation_order,
      rd.ratio_construct_id,
      rd.operator,
      CASE
        WHEN s.value IS NULL THEN 0
        ELSE CASE
            WHEN rd.operator = '-' THEN 0 - s.value
            ELSE s.value
          END
      END AS value
    FROM ratio_detail rd
    JOIN ratio r
      ON rd.ratio_id = r.id
    JOIN ratio_construct rc
      ON rd.ratio_construct_id = rc.id
    LEFT JOIN (SELECT
      ratio_construct_id,
      value
    FROM statement_detail sd
    JOIN statement s
      ON sd.statement_id = s.id
      AND s.company_id = @companyID
      AND s.year = @year) s
      ON rd.ratio_construct_id = s.ratio_construct_id
    WHERE ratio_id = @ratioID


  --select * from #ratio_calc
  --order by position desc, equation_order asc

  --select sum(value) as value
  --from #ratio_calc
  --where position = 'n'

  --select sum(value) as value
  --from #ratio_calc
  --where position = 'd'

  SELECT
    CASE
      WHEN (SELECT
          SUM(value) AS value
        FROM @ratio_calc
        WHERE position = 'd')
        = 0 THEN 0
      ELSE ((SELECT
          SUM(value) AS value
        FROM @ratio_calc
        WHERE position = 'n')
        / (SELECT
          SUM(value) AS value
        FROM @ratio_calc
        WHERE position = 'd')
        )
    END AS value

--drop table #ratio_calc

END;
GO

ALTER PROCEDURE search_type2 @ratioID int, @companyID int

AS
BEGIN

  DECLARE @name varchar(60)
  DECLARE @maxdepth int
  DECLARE @perms TABLE (
    term varchar(max)
  )
  DECLARE @match TABLE (
    type int,
    name varchar(max)
  )
  DECLARE @terms TABLE (
    id int NOT NULL IDENTITY (1, 1),
    term varchar(30)
  )
  DECLARE @articles TABLE (
    id int,
    source nvarchar(max),
    [date] date,
    url nvarchar(max),
    text nvarchar(max),
    title nvarchar(max)
  )

  DECLARE term_cursor CURSOR FOR
  SELECT
    LOWER(name)
  FROM ratio_construct
  WHERE id IN (SELECT
    rc.id
  FROM ratio_construct rc
  JOIN ratio_detail rd
    ON rc.id = rd.ratio_construct_id
  WHERE rd.ratio_id = @ratioID)

  OPEN term_cursor
  FETCH NEXT FROM term_cursor INTO @name

  WHILE @@FETCH_STATUS = 0
  BEGIN
    INSERT INTO @terms
      SELECT
        value
      FROM string_split(@name, ' ')
      WHERE value NOT IN (SELECT
        word
      FROM common_words)

    SELECT
      @maxdepth = MAX(id)
    FROM @terms

    INSERT INTO @perms
      SELECT
        term
      FROM @terms

    IF @maxdepth >= 2
    BEGIN
      INSERT INTO @perms
        SELECT
          concat(a.term, ' ', b.term)
        FROM @terms b,
             @terms a
        WHERE a.id <> b.id
    END

    IF @maxdepth >= 3
    BEGIN
      INSERT INTO @perms
        SELECT
          concat(a.term, ' ', b.term, ' ', c.term)
        FROM @terms b,
             @terms a,
             @terms c
        WHERE b.term <> a.term
        AND b.id <> c.id
        AND a.id <> c.id
    END

    IF @maxdepth >= 4
    BEGIN
      INSERT INTO @perms
        SELECT
          concat(a.term, ' ', b.term, ' ', c.term, ' ', d.term)
        FROM @terms b,
             @terms a,
             @terms d,
             @terms c
        WHERE a.id <> b.id
        AND b.id <> c.id
        AND a.id <> c.id
        AND c.id <> d.id
        AND b.id <> d.id
        AND a.id <> d.id
    END

    INSERT INTO @match
      SELECT DISTINCT
        type,
        concat('"', name, '"') AS [name]
      FROM object
      INNER JOIN @perms p
        ON object.name LIKE p.term
        AND name NOT IN (SELECT
          name
        FROM @match)

    DELETE FROM @terms

    FETCH NEXT FROM term_cursor INTO @name
  END

  CLOSE term_cursor
  DEALLOCATE term_cursor

  DECLARE name_cursor CURSOR FOR
  SELECT DISTINCT
    name
  FROM @match

  OPEN name_cursor
  FETCH NEXT FROM name_cursor INTO @name

  WHILE @@FETCH_STATUS = 0
  BEGIN
    INSERT INTO @articles
      SELECT
        id,
        source,
        [date],
        url,
        text,
        title
      FROM article
      WHERE CONTAINS((text, title), @name)
      AND company_id = @companyID
      AND id NOT IN (SELECT
        id
      FROM @articles)

    FETCH NEXT FROM name_cursor INTO @name
  END

  CLOSE name_cursor
  DEALLOCATE name_cursor

  SELECT
    *
  FROM @articles

END;
GO

ALTER PROCEDURE search_type1 @ratioID int, @companyID int

AS
BEGIN

  --declare @ratioID int
  --declare @companyID int

  --set @ratioID = 16
  --set @companyID = 3

  DECLARE @name varchar(60)
  DECLARE @maxdepth int
  DECLARE @perms TABLE (
    term varchar(max)
  )
  DECLARE @match TABLE (
    type int,
    name varchar(max)
  )
  DECLARE @terms TABLE (
    id int NOT NULL IDENTITY (1, 1),
    term varchar(30)
  )
  DECLARE @articles TABLE (
    id int,
    source nvarchar(max),
    [date] date,
    url nvarchar(max),
    text nvarchar(max),
    title nvarchar(max)
  )

  DECLARE name_cursor CURSOR FOR
  SELECT DISTINCT
    CONCAT('"', LOWER(name), '"') AS [name]
  FROM ratio_construct rc
  JOIN ratio_detail rd
    ON rc.id = rd.ratio_construct_id
    AND rd.ratio_id = @ratioID

  OPEN name_cursor
  FETCH NEXT FROM name_cursor INTO @name

  WHILE @@FETCH_STATUS = 0
  BEGIN
    INSERT INTO @articles
      SELECT
        id,
        source,
        [date],
        url,
        text,
        title
      FROM article
      WHERE CONTAINS((text, title), @name)
      AND company_id = @companyID
      AND id NOT IN (SELECT
        id
      FROM @articles)

    FETCH NEXT FROM name_cursor INTO @name
  END

  CLOSE name_cursor
  DEALLOCATE name_cursor

  SELECT
    *
  FROM @articles

END;
GO