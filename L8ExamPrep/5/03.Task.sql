update employees as e
join  teams as t
on e.id = t.leader_id
set salary = salary +1000
where e.age <40 and e.salary <= 5000
