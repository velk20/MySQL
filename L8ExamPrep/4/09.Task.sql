select count(p.category_id) as items_count,
		c.`name`,
        sum(p.quantity_in_stock) as total_quantity
        from products as p 
        join categories as c
        on p.category_id = c.id
        group by p.category_id
        order by items_count desc,total_quantity
        limit 5