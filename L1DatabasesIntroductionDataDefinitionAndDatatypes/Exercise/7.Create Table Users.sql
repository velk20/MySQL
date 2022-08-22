create table users(
id int primary key not null auto_increment,
username varchar(30) not null unique,
`password` varchar(26) not null,
profile_picture blob,
last_login_time datetime,
is_deleted bool
);

insert into users(username,`password`,last_login_time)
values ('Pesho','pesho',date(now())),('Pesssssho','pesho',date(now())),('Gosho','pesho',date(now())),('Peshoss','pesho',date(now())),('Peshsso','pesho',date(now()));