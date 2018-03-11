CREATE PROCEDURE search_type1 @ratioID int, @companyID int

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

END
GO
GRANT EXECUTE
    ON OBJECT::[dbo].[search_type1] TO [IIS APPPOOL\DefaultAppPool]
    AS [dbo];

