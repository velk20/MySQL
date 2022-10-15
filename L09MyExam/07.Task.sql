select concat(last_name,first_name,CHAR_LENGTH(first_name),'Restaurant')as username,
reverse(substr(email,2,12)) as `password`
from waiters
where salary is not null
order by `password` desc