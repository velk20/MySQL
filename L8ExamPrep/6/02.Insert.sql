insert into clients(full_name,phone_number)
select concat(first_name,' ',last_name) as full_name
		,concat('(088) 9999',id*2 ) as phone_number from drivers
        where id BETWEEN 10 and 20
