select concat(a.first_name,' ',a.last_name) as full_name,
		concat(reverse(a.last_name),CHAR_LENGTH(a.last_name),'@cast.com') as email,
        (2022 - Year(a.birthdate)) as age,
        a.height
        from actors as a
        left join movies_actors as ma
        on a.id = ma.actor_id
        where ma.movie_id is null
order by height