select 	first_name , last_name from employees
where lower(job_title) not like '%engineer%'
order by employee_id