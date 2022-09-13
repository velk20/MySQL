select first_name,last_name from employees
where locate('ei',lower(last_name))