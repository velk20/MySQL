select e.employee_id,e.first_name,e.last_name,d.`name` as `department_name`
from employees as e
join departments as d
on e.department_id = d.department_id
where d.`name` = 'Sales'
order by employee_id desc
