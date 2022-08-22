alter table users
drop primary key,
add constraint pk_users2
primary key users(id,`username`);

insert into users(username,`password`,last_login_time)
value ('Peshssssso','pesho',date(now()));