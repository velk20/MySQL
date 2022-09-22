select e.employee_id,e.first_name
from employees as e 
left join employees_projects as ep
on e.employee_id = ep.employee_id
order by e.employee_id desc
limit 3