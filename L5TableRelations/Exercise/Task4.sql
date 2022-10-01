create table teachers(
teacher_id int primary key auto_increment,
`name` varchar(50) not null,
manager_id int
);

alter table teachers
 auto_increment = 101;

insert into teachers(`name`,manager_id)
values('John',NULL),
('Maya',106),
('Silvia',106),
('Ted',105),
('Mark',101),
('Greta',101);


alter table teachers
add constraint fk_teachers_managers
foreign key (manager_id)references teachers(teacher_id);


