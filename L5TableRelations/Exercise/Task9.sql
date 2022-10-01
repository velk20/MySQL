select 	m.mountain_range, p.peak_name,p.elevation as  peak_elevation
from mountains as m
join peaks as p
on m.id = p.mountain_id
where 	m.mountain_range = 'Rila'
order by peak_elevation desc