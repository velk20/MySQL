select players.id,concat(first_name,' ',last_name)as full_name,age,position,hire_date
from players
join skills_data on players.skills_data_id = skills_data.id
where age<23	and position ='A' and hire_date is null and skills_data.strength>50
order by salary,age