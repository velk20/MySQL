select department_id,round(min(salary),2)  as `Min Salary` from employees
group by department_id
having `Min Salary` > 800