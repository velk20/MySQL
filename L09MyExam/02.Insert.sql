insert into products(`name`,`type`,price)
select concat(w.last_name,' ','specialty'),'Cocktail',ceil(w.salary*0.01)
from waiters as w
where w.id > 6
