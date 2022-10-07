select t.`name`, a.`name`, char_length(a.`name`) as count_of_characters
from addresses as a
join offices as o
on a.id =o.address_id
join teams as t
on t.office_id = o.id
where o.website is not null
order by t.`name`, a.`name`