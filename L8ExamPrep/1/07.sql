select t.`name`,t.established,t.fan_base,Count(p.id) as players_count
from teams as t
left join players as p
on t.id = p.team_id
group by t.`name`
order by players_count desc