select town_id, `name` from towns
where left(`name`,1) not in  ('R','B','D') 
order by `name`