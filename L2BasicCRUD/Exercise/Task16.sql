alter view v_employees_job_titles  as(
select
concat_ws (' ',first_name,IFNULL(middle_name,''),last_name) as full_name, salary from employees
);

select * from v_employees_job_titles 