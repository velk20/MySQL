select count(o.id) as total_products 
from customers as c
join orders as o
on c.id = o.customer_id
where c.first_name = 'Shirley'
group by o.customer_id