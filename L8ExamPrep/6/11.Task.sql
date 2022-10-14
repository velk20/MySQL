select a.`name`,cli.full_name,
	case when cou.bill <=20 then 'Low'
		 when cou.bill <=30 then 'Medium'
         else 'High'
	end as level_of_bill,
    c.make,
    c.`condition`,
    cat.`name`
    from addresses as a
    join courses as cou
    on a.id = cou.from_address_id
    join clients as cli
    on cli.id = cou.client_id
    join cars as c
    on c.id = cou.car_id
    join categories as cat
    on cat.id = c.category_id
    where a.`name` = '700 Monterey Avenue'
    order by c.make,cli.full_name