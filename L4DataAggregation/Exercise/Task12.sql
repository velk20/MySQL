SELECT department_id,MIN(salary)as minimum_salary FROM employees
WHERE department_id IN (2,5,7) AND DATE(hire_date) > DATE('2000-01-01')
GROUP BY department_id
ORDER BY department_id;
