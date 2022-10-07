select count(*)
from orders as o
join customers as c
on c.id = o.customer_id
join orders_products as op
on o.id = op.order_id
where c.first_name = 'Shirley'
group by c.id
