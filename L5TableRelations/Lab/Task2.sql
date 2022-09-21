select c.id as driver_id, v.vehicle_type, concat(c.first_name,' ',c.last_name)
 as driver_name
from campers as c 
join vehicles as v
on c.id = v.driver_id