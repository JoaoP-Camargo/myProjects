select 
	 concat(monthname(created_at),'/',year(created_at))			as "year_month"
	,round(avg(TIMESTAMPDIFF(YEAR, birth_date, deleted_at)),0)	as avg_age
	,count(id)													as deleted
from testes.subscribers s 
where deleted_at <> 0
group by 1
order by created_at