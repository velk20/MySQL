create table addresses(
id int primary key auto_increment,
`name` VARCHAR(50) not null
);

create table categories(
id int primary key auto_increment,
`name` VARCHAR(10) not null
);

create table offices(
id int PRIMARY key AUTO_INCREMENT,
workspace_capacity int not null,
website varchar(50),
address_id int  not null,
CONSTRAINT fk_offices_categories
FOREIGN KEY (address_id) REFERENCES addresses(id)
);

create table employees(
id int PRIMARY key AUTO_INCREMENT,
first_name varchar(30) not null,
last_name varchar(30) not null,
age int not null,
salary DECIMAL(10,2) not null,
job_title VARCHAR(20) not null,
happiness_level char(1) not null
);

create table teams(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(40) not null,
office_id int not null,
CONSTRAINT fk_teams_offices
FOREIGN KEY (office_id) REFERENCES offices(id),
leader_id int not null UNIQUE,
CONSTRAINT fk_teams_employees
FOREIGN KEY (leader_id) REFERENCES employees(id)
);

create table games(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(50) not null UNIQUE,
`description` text ,
rating FLOAT DEFAULT 5.5 not null,
budget DECIMAL(10,2) not null,
release_date date,
team_id int not null,
CONSTRAINT fk_games_teams
FOREIGN KEY (team_id) REFERENCES teams(id)
);

create table games_categories(
game_id int not null,
category_id int not null,
PRIMARY KEY(game_id,category_id),
CONSTRAINT fk_games_categories
FOREIGN KEY (game_id) REFERENCES games(id),
CONSTRAINT fk_categories_games
FOREIGN KEY (category_id) REFERENCES categories(id)
);