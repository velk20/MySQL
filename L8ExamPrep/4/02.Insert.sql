insert into reviews(content,picture_url,published_at,rating)
(select substr(`description`,1,15),reverse(`name`), '2010-10-10', price/8 
from products 
where id >= 5)