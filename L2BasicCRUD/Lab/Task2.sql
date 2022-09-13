Select id, concat_ws(' ',first_name, last_name) as full_name, job_title, salary from employees
where salary > 1000