create table people(
id int primary key not null auto_increment,
`name` varchar(200) not null,
picture blob,
height double(10,2),
weight double(10,2),
gender char(1) not null,
birthdate date not null,
biography text
);


insert into people (`name`,gender,birthdate)
values('Peter','M',Date(now())),
('Peter','M',Date(now())),
('Peter','M',Date(now())),
('Peter','M',Date(now())),
('Peter','M',Date(now()));


