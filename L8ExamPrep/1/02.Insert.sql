insert into coaches (first_name,last_name,salary,coach_level)
select first_name,last_name,(salary*2) as salary,char_length(first_name) as coach_level
from players
where age>=45