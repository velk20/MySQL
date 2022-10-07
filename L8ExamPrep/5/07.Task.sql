select 	c.`name`, 
		count(g.id) as games_count, 
        round(avg(g.budget),2) as avg_budget,
        max(g.rating) as max_rating
from categories as c
join games_categories as gc
on c.id = gc.category_id
join games as g
on gc.game_id = g.id
group by c.id
HAVING max_rating >= 9.5
order by games_count desc, c.`name`