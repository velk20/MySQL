#01
update coaches as c
join players_coaches as pk
on pk.coach_id = c.id
set coach_level = coach_level + 1
where  first_name LIKE 'A%';

#1
UPDATE coaches 
SET 
    coach_level = coach_level + 1
WHERE
    first_name LIKE 'A%'
        AND (SELECT 
            COUNT(*)
        FROM
            players_coaches
        WHERE
            coach_id = coaches.id) > 0;
            
            
#2
            UPDATE coaches 
SET 
    coach_level = coach_level + 1
WHERE
    first_name LIKE 'A%'
        AND id in (select coach_id from players_coaches)