select c.`name`, count(m.id) as movies_count
from countries as c
join movies as m
on c.id = m.country_id
group by c.id
having movies_count >= 7
order by c.`name` desc