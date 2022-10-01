select m.title, 
case
	when i.rating <= 4 then 'poor'
    when i.rating > 4 and i.rating <= 7 then 'good'
    else 'excellent'
end as rating,
if(i.has_subtitles,'english','-') as subtitles,
i.budget
from movies as m
join movies_additional_info as i
on m.movie_info_id = i.id
order by budget desc