select e.employee_id,e.first_name,e.manager_id,m.first_name as manager_name
from employees as e
join employees as m
on e.manager_id = m.employee_id
where e.manager_id in (3,7)
order by e.first_name