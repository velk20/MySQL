select id as photo_id, 
(select count(id ) from likes where photos.id = likes.photo_id ) as likes_count,
 (select count(id)   from comments where comments.photo_id= photos.id ) as comments_count
 from photos
 order by likes_count desc, comments_count desc ,photo_id