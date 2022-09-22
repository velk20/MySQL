select e.employee_id,e.first_name,round(e.salary,2)as salary,d.`name` as `department_name`
from employees as e
join departments as d
on e.department_id = d.department_id
where salary >15000
order by d.department_id desc
limit 5