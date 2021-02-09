select
	 concat(monthname(created_at),'/',year(created_at))													as "year_month"
	,year(created_at)																					as "year"
	,sum(if(status='canceled',all_revenue,0))/sum(if(status='canceled',num_items,0))					# Average Ticket of Canceled Subscriptions as AVG_T
		*
		(
			(select 																					# Average months users keep subscribed as AVG_M
				round(avg(TIMESTAMPDIFF(month, created_at , if(status<>'canceled',now(),deleted_at))),0)
			 from testes.subscribers s) 
		- 
			round(avg(TIMESTAMPDIFF(month, created_at , if(status<>'canceled',null,deleted_at))),0)		# Average months users kept subscribed in current month as AVG_C
		) 																								as avg_loss # AVG_T * (AVG_M-AVG_C) to calculate how much we would have received if the user kept the subscription
from testes.subscribers s
group by 1
order by created_at 