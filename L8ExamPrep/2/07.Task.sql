select concat(u.id,' ',u.username) as id_username, u.email
from users as u
join users_photos as up
on u.id = up.user_id
where u.id = up.photo_id
order by u.id