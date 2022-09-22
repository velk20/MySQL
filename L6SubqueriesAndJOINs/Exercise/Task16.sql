SELECT 
    COUNT(country_code)
FROM
    countries
WHERE
    country_code NOT IN (SELECT 
            country_code
        FROM
            mountains_countries)