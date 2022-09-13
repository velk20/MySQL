select `name`,date_format(`start`,'%Y-%m-%d') from games
where extract(year from `start`) between 2011 and 2012
order by `start` ,`name`
limit 50