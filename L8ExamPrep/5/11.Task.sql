CREATE PROCEDURE `udp_update_budget` (min_game_rating FLOAT)
BEGIN
	update games as g
left join games_categories as gc
on g.id = gc.game_id
set budget = budget + 100000,
	release_date = DATE_ADD(release_date, INTERVAL 1 year)
where gc.category_id is null and g.rating > min_game_rating and g.release_date is not null;
END
