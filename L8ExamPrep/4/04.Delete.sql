delete cs from customers as cs 
left join orders as o 
on cs.id = o.customer_id
where o.customer_id is null