SELECT country_name,population FROM geography.countries
where continent_code ='EU'
order by population desc,country_name
limit 30;