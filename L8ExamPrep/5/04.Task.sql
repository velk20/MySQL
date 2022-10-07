delete g from games  as g
left join games_categories as gc
on gc.game_id = g.id
where release_date is null and gc.category_id is null

