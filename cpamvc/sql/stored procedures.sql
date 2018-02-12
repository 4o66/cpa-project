--use cpa

--declare @rid as int
--declare @cid as int
--declare @year as int
--set @rid = 16
--set @cid = 4
--set @year = 2017

alter procedure getRatio
	@ratioID int,
	@companyID int,
	@year int

	-- Given a year, company id and ratio id, returns the ratio, if possible
	-- If a ratio would be invalid (zero in denominator) it reurns zero

as
begin
	declare @ratio_calc table (
		position varchar(1),
		equation_order int,
		ratio_construct_id int,
		operator varchar(1),
		value money
	)

	insert into @ratio_calc
	select	distinct --r.name, 
			rd.position, 
			rd.equation_order, 
			rd.ratio_construct_id,
			rd.operator, 
			case
				when s.value is null
					then 0
				else
					case
						when rd.operator = '-'
							then 0 - s.value
						else
							s.value
						end
			end as value
	from ratio_detail rd
	join ratio r on rd.ratio_id = r.id
	join ratio_construct rc on rd.ratio_construct_id = rc.id
	left join (
		select ratio_construct_id, value
		from statement_detail sd
		join statement s on sd.statement_id = s.id and s.company_id = @companyID and s.year = @year
	) s on rd.ratio_construct_id = s.ratio_construct_id
	where ratio_id = @ratioID


	--select * from #ratio_calc
	--order by position desc, equation_order asc

	--select sum(value) as value
	--from #ratio_calc
	--where position = 'n'

	--select sum(value) as value
	--from #ratio_calc
	--where position = 'd'

	select	case
				when (select sum(value) as value from @ratio_calc where position = 'd') = 0
					then 0
				else
					((select sum(value) as value from @ratio_calc where position = 'n')/
					(select sum(value) as value from @ratio_calc where position = 'd'))
			end as value

	--drop table #ratio_calc

end;
