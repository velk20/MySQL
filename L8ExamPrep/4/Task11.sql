update products as p
join categories as c
on p.category_id = c.id
join reviews as r
on r.id = p.review_id
set p.price = p.price * 0.7
where c.`name` = 'Phones and tablets' and r.rating < 4
