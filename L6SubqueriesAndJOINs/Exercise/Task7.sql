select e.employee_id,e.first_name,p.`name`
from employees as e 
join employees_projects as ep
on e.employee_id = ep.employee_id
join projects as p
on ep.project_id = p.project_id
where DATE(p.start_date) > '2002-08-13' and p.end_date is NULL
order by e.first_name,p.`name`
limit 5