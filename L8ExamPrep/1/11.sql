CREATE PROCEDURE `udp_find_playmaker` (min_dribble_points int , team_name varchar(45))
BEGIN
	select concat(first_name,' ',last_name) as full_name, age, salary, dribbling, speed, t.`name` as team_name
from skills_data as sd
join players as p
on sd.id = p.skills_data_id
join teams as t
on p.team_id =t.id
where dribbling >= min_dribble_points
and t.`name` = team_name
and speed > (select avg(speed) from skills_data join players on skills_data.id = players.skills_data_id)
order by speed desc
limit 1;

END