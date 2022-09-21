select  r.starting_point,r.end_point,r.leader_id,
concat(first_name,' ',last_name)as leader_name
from routes as r
join campers as c
on r.leader_id = c.id
