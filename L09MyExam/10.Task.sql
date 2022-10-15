select sum(p.price) as bill
from clients as c
join orders_clients as oc
on c.id = oc.client_id
join orders as o
on oc.order_id = o.id
join orders_products as op
on o.id = op.order_id
join products as p
on op.product_id = p.id
where concat(c.first_name, ' ',c.last_name) = 'Silvio Blyth'