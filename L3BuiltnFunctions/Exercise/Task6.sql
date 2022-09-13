select town_id, `name` from towns
where `name` REGEXP '[MKBE]+'
order by `name`