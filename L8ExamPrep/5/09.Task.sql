select  g.`name`, 
		if(g.budget < 50000,'Normal budget','Insufficient budget') as budget_level,
        t.`name` as team_name,
        a.`name` as address_name
	from games as g
    join teams as t
    on g.team_id = t.id
    join offices as o
    on o.id = t.office_id
    join addresses as a
    on a.id = o.address_id
    left join games_categories as gc
    on gc.game_id = g.id
    where g.release_date is null and gc.category_id is null
    order by g.`name`