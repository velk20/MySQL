SELECT 
    mc.country_code, COUNT(m.mountain_range) AS mountain_range
FROM
    mountains_countries AS mc
        JOIN
    mountains AS m ON mc.mountain_id = m.id
GROUP BY mc.country_code
HAVING mc.country_code IN ('BG' , 'RU', 'US')
