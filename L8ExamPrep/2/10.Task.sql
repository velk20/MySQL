CREATE FUNCTION `udf_users_photos_count` (username VARCHAR(30)) 
RETURNS INTEGER
deterministic
BEGIN
RETURN (select count(p.id)
from photos as p
join users_photos as up
on p.id =up.photo_id
join users as u
on up.user_id = u.id
where u.username = username
);
END
