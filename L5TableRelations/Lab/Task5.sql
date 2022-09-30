create table clients(
id int primary key auto_increment,
client_name varchar(100) not null
);

create table projects(
id int primary key auto_increment,
client_id int,
constraint fk_projects_clients
foreign key (client_id) references clients(id),
project_lead_id int
);

create table employees(
id int primary key auto_increment,
first_name varchar(30) not null,
last_name varchar(30) not null,
project_id int,
constraint fk_employees_projects
foreign key (project_id) references projects(id)
);

alter table projects
add constraint fk_projects_employees
foreign key (project_lead_id) references employees(id);