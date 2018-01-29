USE [cpa]
--select all companies (only name would be displayed, but id needed for further queries)
SELECT id, name
FROM company
ORDER BY name

--Select a single company
SELECT	name,
		market,
		symbol,
		description
FROM company
WHERE id = 2

--select all ratios
SELECT id, name, type
FROM ratio
ORDER BY type, name

--select the constructors for a ratio, given the id
SELECT	position, --numerator (n) or denomintor (d)
		line, --order
		operator, -- plus or minus
		name
FROM ratio_detail
JOIN ratio_construct on ratio_detail.ratio_construct_id = ratio_construct.id
WHERE ratio_id = 1

--select all statements for a given company id
SELECT	id, --not displayed, used for follow on details
		name,
		year,
		quarter
FROM statement
WHERE company_id = '2'
ORDER BY year, quarter ASC

--retrive a statement given the id
SELECT	name,
		value
FROM statement_detail
JOIN ratio_construct on statement_detail.ratio_construct_id = ratio_construct.id
WHERE statement_id = 2
ORDER BY line

--retrive articles, given a company id
SELECT	id,
		title,
		source,
		date,
		url,
		text
FROM article
WHERE company_id = 2
ORDER BY date DESC, title, source

