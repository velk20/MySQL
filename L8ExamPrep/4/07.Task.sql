select * from reviews
where content like 'My%' and char_length(content) >	61
order by rating desc