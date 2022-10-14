select count(*) from clients as c
join courses as cs
on c.id = cs.client_id
where c.phone_number = '(803) 6386812'