select e.employee_id , e.first_name,
IF(EXTRACT(YEAR FROM p.start_date)>='2005',NULL,p.`name`) as `project_name`
from employees  as e
join employees_projects as ep
on e.employee_id = ep.employee_id
join projects as p
on p.project_id = ep.project_id
where e.employee_id = 24
order by p.`name`