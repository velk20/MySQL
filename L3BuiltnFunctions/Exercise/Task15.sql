select `name` as game,
case 	
	when hour(`start`) >= 0 and hour(`start`) < 12 then 'Morning'
	when hour(`start`) >= 12 and hour(`start`) < 18 then 'Afternoon'
	when hour(`start`) >= 18 and hour(`start`) < 24 then 'Evening'
    end as `Part of the Day`
,CASE
        WHEN `duration` <= 3 THEN 'Extra Short'
        WHEN `duration` <= 6 THEN 'Short'
        WHEN `duration` <= 10 THEN 'Long'
        ELSE 'Extra Long'
    END AS 'Duration'
FROM
    `games`;
	