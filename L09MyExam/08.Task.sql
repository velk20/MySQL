select p.id,p.`name`,count(op.order_id) as count
from products as p
join orders_products as op
on p.id = op.product_id
group by p.id
having count >= 5
order by count desc,`name`
