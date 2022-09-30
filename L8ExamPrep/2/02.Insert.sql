insert into addresses (`address`,town,country,user_id)
select username as `address`,`password` as town,ip as country,age as user_id from users
where gender = 'M'