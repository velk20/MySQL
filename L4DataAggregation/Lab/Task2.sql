select department_id, round(avg(salary),2) as `Average Salary` from employees
group by department_id
