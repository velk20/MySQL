SELECT user_name, substr(email,locate('@',email)+1) as 'email provider' from users
ORDER BY `email provider` ASC , `user_name` ASC;
