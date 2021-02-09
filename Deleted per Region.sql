select 
	state 					as state
	,year(created_at)		as "year"
	,count(id)				as deleted
from testes.subscribers
where 1=1
	and deleted_at <> 0
group by 1,2
order by 3 desc 
	
