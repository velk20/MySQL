create view `v_employees_salaries` as(
select first_name,last_name,salary from employees
);

select * from `v_employees_salaries`