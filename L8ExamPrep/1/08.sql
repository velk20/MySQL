select MAX(s.speed) as  max_speed, tw.`name`
from skills_data as s
right join players as p
on s.id = p.skills_data_id
right join teams as t
on p.team_id = t.id
right join stadiums as st
on t.stadium_id = st.id
right join towns as tw
on st.town_id = tw.id
where t.name != 'Devify'
group by tw.`name`
order by max_speed desc, tw.`name`