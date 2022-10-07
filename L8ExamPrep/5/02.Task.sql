insert into games (`name`,rating,budget,team_id)
(
select DISTINCT REVERSE(lower(substr(`name`,2))),id,leader_id *1000,id from teams where id BETWEEN 1 and 9
)