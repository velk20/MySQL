select m.id, m.title, i.runtime, i.budget, i.release_date
from movies as m
join movies_additional_info as i
on m.movie_info_id = i.id
where year(i.release_date) between 1996 and 1999
order by i.runtime, id
limit 20