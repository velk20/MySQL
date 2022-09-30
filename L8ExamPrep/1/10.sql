CREATE FUNCTION `udf_stadium_players_count ` (stadium_name VARCHAR(30))
RETURNS INTEGER
deterministic
BEGIN
		
RETURN (select count(p.id) as cnt
	from stadiums as s
	left join teams as t
	on s.id = t.stadium_id
	left join players as p
	on t.id = p.team_id
	where s.`name` = stadium_name
	group by s.id);
END
