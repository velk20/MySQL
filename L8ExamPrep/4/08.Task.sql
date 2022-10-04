select concat(c.first_name,' ',c.last_name) as full_name,
		c.address, o.order_datetime from customers as c
        join orders as o
        on c.id = o.customer_id
        where year(order_datetime) <= 2018
        order by full_name desc