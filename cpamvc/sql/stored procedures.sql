ALTER PROCEDURE getRatio @ratioID int,
@companyID int,
@year int

-- Given a year, company id and ratio id, returns the ratio, if possible
-- If a ratio would be invalid (zero in denominator) it reurns zero

AS
BEGIN

  /*This is a Variable Table, that exists for only as long as the stored
    procedure is running. */
  DECLARE @ratio_calc TABLE (
    position varchar(1),
    equation_order int,
    ratio_construct_id int,
    operator varchar(1),
    value money
  )

  INSERT INTO @ratio_calc
    /* Here we are populating the @ratio_calc table with the ratio definition and
       the numeric value from stored accounting data */
    SELECT DISTINCT --DISTINCT ensures each row will be unique 
      rd.position,
      rd.equation_order,
      rd.ratio_construct_id,
      rd.operator,
      
      /* Rather than try to do any fancy math later with operator column, if
         the operatoris minus, we subtract to value from zero, giving us the 
         negative of the value, and we can just sum to values */
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

  SELECT
    CASE --Since dividing by zero isn't possible, return zero if the denom. is zero
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

END;
GO

ALTER PROCEDURE search_type2 @ratioID int, @companyID int

/* Given a ratioID, look at the constructors, break them into individual words,
   permutate them at up to four words at a time, then match the permutations to
   known objects. Given the objects, search the text articles for matches and
   return them when found.
*/

AS
BEGIN

  DECLARE @name varchar(60)
  DECLARE @maxdepth int
  DECLARE @perms TABLE ( --@perms is used to hold the permutated ratio constructors
    term varchar(max)
  )
  DECLARE @match TABLE ( --@match holds the objects that match any of the permutated terms
    type int,
    name varchar(max)
  )
  DECLARE @terms TABLE ( --@terms is used to hold the individual words of a constructor
    id int NOT NULL IDENTITY (1, 1),
    term varchar(30)
  )
  DECLARE @articles TABLE ( --@articles holds articles that match a full-text search
    id int,
    source nvarchar(max),
    [date] date,
    url nvarchar(max),
    text nvarchar(max),
    title nvarchar(max)
  )

  DECLARE term_cursor CURSOR FOR
    /* a CURSOR is the SQL equivilent of a FOR, NEXT or WHILE, DO loop. It allows us
       to populate a table (variable tables in this case) and then run SQL statements
       against each line on the table. This allows us to let the SQL database engine
       to do the heavy lifting for all the searches, since in a production environment
       it will typically have more processing and memory resources than the web server. */
  SELECT --This SELECT populates the term_cursor.
    LOWER(name)
  FROM ratio_construct
  WHERE id IN (SELECT
    rc.id
  FROM ratio_construct rc
  JOIN ratio_detail rd
    ON rc.id = rd.ratio_construct_id
  WHERE rd.ratio_id = @ratioID)

  OPEN term_cursor --This tells the SQL engine we want to work with the contents of the cursor
  FETCH NEXT FROM term_cursor INTO @name --Take the irst row of the curos and put it in the variable @name

  WHILE @@FETCH_STATUS = 0 --only run the following statements until the cursor is at the end
  BEGIN
    INSERT INTO @terms
      SELECT
        value
      FROM string_split(@name, ' ')
        /* Take the ratio constuctor, splitting into words on every space charater " ", and
           if that work is NOT in the common words list, put it into the @terms variable table */
      WHERE value NOT IN (SELECT
        word
      FROM common_words)

    SELECT
      @maxdepth = MAX(id) --count how many words the constructor (minus common words) has
    FROM @terms

    INSERT INTO @perms --put each word by itself into the permutation table
      SELECT
        term
      FROM @terms

    IF @maxdepth >= 2 /* if the constructor had more than one word, make every combination
                         of two words from the component words */ 
    BEGIN
      INSERT INTO @perms
        SELECT
          concat(a.term, ' ', b.term) --concat will join the strings inside the parens. together
        FROM @terms b, /* the order in which the tables are listed is important, but not intuitive
                          use sample data if you need to adjust the query to ensure you are getting
                          the results you expect */
             @terms a  
        WHERE a.id <> b.id  --don't repeat any word twice
    END

    IF @maxdepth >= 3 /* if the constructor had more than two words, make every combination
                         of three words from the component words */
    BEGIN
      INSERT INTO @perms
        SELECT
          concat(a.term, ' ', b.term, ' ', c.term)
        FROM @terms b, 
             @terms a,
             @terms c
        WHERE b.term <> a.term /* each time we add another word in length, the matching to make
                                  sure we don't repeat a word gets more complex */
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
      /* Now that we have all the permutations, match them to objects. At this point
         we also enclose them in double quotes, so that they are valid full-text
         search strings */
      SELECT DISTINCT
        type,
        concat('"', name, '"') AS [name]
      FROM object
      INNER JOIN @perms p
        ON object.name LIKE p.term
        AND name NOT IN (SELECT
          name
        FROM @match)

    DELETE FROM @terms --clear the variable table, so that we start fresh with the next constructor

    FETCH NEXT FROM term_cursor INTO @name
  END

  CLOSE term_cursor
  DEALLOCATE term_cursor

  DECLARE name_cursor CURSOR FOR
    /* now that we have all out matched objects, time to start doing the full-text
       search, one object at a time */
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
      WHERE CONTAINS((text, title), @name) /* CONTAINS is used by the SQL Full-Text search
                                              engine, and is an option feature availble in
                                              full SQL server installs, or SQL Express with
                                              advanced services only. */
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
  FROM @articles --return the results!

END;
GO

ALTER PROCEDURE search_type1 @ratioID int, @companyID int

/* Much simpler than type2, this search only matches ratio constructors to
   text in the acticles. */

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

  DECLARE name_cursor CURSOR FOR
  SELECT DISTINCT
    CONCAT('"', LOWER(name), '"') AS [name]
      --enclose in double quotes for full-text search, and shift to lowercase
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