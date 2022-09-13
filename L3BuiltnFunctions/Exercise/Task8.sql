create view v_employees_hired_after_2000 as 
select first_name,last_name from employees 
where date_format(hire_date,'%Y') > '2000' ;

select  * from v_employees_hired_after_2000