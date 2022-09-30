select c.`name`, count(p.id) as total_count_of_players, sum(p.salary) as total_sum_of_salaries
from players as p
right join teams as t
on p.team_id = t.id
right join stadiums as st
on t.stadium_id =st.id
right join towns as tw
on st.town_id = tw.id
right join countries as c
on tw.country_id =c.id
group by c.`name`
order by total_count_of_players desc, c.`name`