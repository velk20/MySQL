select first_name from employees
where department_id in (3,10) and date_format(hire_date,'%Y') 
BETWEEN '1995' and '2005' 
order by employee_id