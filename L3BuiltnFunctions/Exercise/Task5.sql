select `name` from towns
where char_length(`name`) = 5 Or char_length(`name`) = 6
order by `name`