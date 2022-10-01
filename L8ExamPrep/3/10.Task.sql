CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50)) 
RETURNS INTEGER
deterministic
BEGIN
RETURN (select count(m.id)  as history_movies
	from actors as a
	join movies_actors as ma
	on a.id = ma.actor_id
	join movies as m
	on ma.movie_id = m.id
	join genres_movies as gm 
	on m.id = gm.movie_id
	join genres as g
	on gm.genre_id = g.id
	where concat(a.first_name, ' ',a.last_name) = full_name
	and g.`name` = 'history');
END
