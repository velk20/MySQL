select t.id as table_id, t.capacity, count(oc.client_id) as count_clients,
		case 
			when t.capacity > count(oc.client_id) then 'Free seats'
            when t.capacity = count(oc.client_id) then 'Full'
            else 'Extra seats'
        end as availability
from `tables` as t
join orders as o
on t.id = o.table_id
join orders_clients as oc
on o.id = oc.order_id
where t.floor = 1
group by o.table_id
order by table_id desc