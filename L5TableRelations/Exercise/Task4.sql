create table teachers(
teacher_id int primary key auto_increment,
`name` varchar(50) not null,
manager_id int,
constraint fk_teachers_managers
foreign key (manager_id)references teachers(teacher_id)
) auto_increment = 101;

insert into teachers(teacher_id,`name`,manager_id)
values(101,'John',NULL),
(102,'John',106),
(103,'John',106),
(104,'John',105),
(105,'John',101),
(106,'John',101)
