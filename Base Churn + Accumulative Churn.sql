select 																						# Churn
	 concat(monthname(created_at),'/',year(created_at))										as "year_month" 
	,month(created_at)																		as "month"
	,year(created_at)																		as "year"
	,count(id)																				as subscriptions 
	,count(if(date(deleted_at)<>'0000-00-00',1,null)) 										# Deleted at current year/month as DEL										
		/
		 ((select 																			# Total subscriptions <= current year/month as ACC_SUBS
			  count(s2.id) 
		   from testes.subscribers s2
		   where 
			  cast(concat(year(s.created_at),'-',month(s.created_at),'-01') as date) 
			  >= cast(concat(year(s2.created_at),'-',month(s2.created_at),'-01') as date)) 		
		-
		  (select 																			# Total deleted < current year/month as ACC_DEL
			  count(if(date(s3.deleted_at)<>'0000-00-00',1,null))
		   from testes.subscribers s3
		   where
		  	  cast(concat(year(s.created_at),'-',month(s.created_at),'-01') as date) 
			  > cast(concat(year(s3.created_at),'-',month(s3.created_at),'-01') as date)))	as accumulative_churn # Is DEL/(ACC_SUBS-ACC_DEL)
	,count(if(date(deleted_at)<>'0000-00-00',1,null))										as deleted 
	,count(if(date(deleted_at)<>'0000-00-00',1,null))/count(id) 							as churn # Is deleted at current month / subscribed at current month
	,0.08 																					as goal # As a visual mark only
from testes.subscribers s
group by 1
order by created_at