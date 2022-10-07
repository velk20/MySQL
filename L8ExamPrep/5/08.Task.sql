select  g.`name`,
		release_date,
		concat(substr(description,1,10),'...') as summary,
        CASE
			WHEN month(release_date) >= 1 and  month(release_date) <= 3 THEN "Q1"
			WHEN month(release_date) >= 4 and  month(release_date) <= 6 THEN "Q2"
			WHEN month(release_date) >= 7 and  month(release_date) <= 9 THEN "Q3"
			ELSE "Q4"
		END as `quarter`,
		t.`name` as team_name
from games as g
join teams as t
on g.team_id = t.id
where g.`name` like '%2' and year(release_date) = 2022 and month(release_date)%2 = 0
order by `quarter`