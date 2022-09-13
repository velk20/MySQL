select department_id, count(department_id) as `Number of employees`  from employees
group by department_id