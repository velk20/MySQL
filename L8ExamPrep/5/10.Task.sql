CREATE FUNCTION `udf_game_info_by_name` (game_name VARCHAR (20)) 
RETURNS VARCHAR(255)
BEGIN

RETURN (select concat_ws(' ','The',g.`name`, 'is developed by a',t.`name`,'in an office with an address',a.`name`)
from games as g
join teams as t
on g.team_id = t.id
join offices as o
on o.id = t.office_id 
join addresses as a
on a.id = o.address_id
where g.`name` = game_name);
END
