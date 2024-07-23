with first_order as (
    select customer_id,min(order_date) as min_date
    from delivery
    group by customer_id
)
select round(sum(case when d.order_date = d.customer_pref_delivery_date then 1 else 0 end)*100/count(distinct f.customer_id),2) as immediate_percentage
from delivery d
inner join first_order f
on d.customer_id = f.customer_id
and d.order_date = f.min_date
