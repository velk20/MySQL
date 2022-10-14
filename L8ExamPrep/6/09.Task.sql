select a.`name`, if(hour(c.`start`)>=6 and hour(c.`start`) <=20,'Day','Night'), c.bill,cl.full_name,ca.make,ca.model,cat.`name`
from addresses as a
join courses as c
on a.id = c.from_address_id
join clients as cl
on cl.id = c.client_id
join cars as ca
on ca.id = c.car_id
join categories as cat
on cat.id = ca.category_id
order by c.id