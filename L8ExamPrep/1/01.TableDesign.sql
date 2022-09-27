use fsd;

create table countries(
id int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(45) not null
);

CREATE table 	towns(
id int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(45) not null,
country_id int,
FOREIGN KEY (country_id) REFERENCES countries(id)
);

create table stadiums(
id int PRIMARY key  AUTO_INCREMENT,
`name` varchar(45) not null,
capacity int not null,
town_id int,
FOREIGN KEY (town_id) REFERENCES towns(id)
);

create table teams(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(45) not null,
established date,
fan_base bigint(20) not null DEFAULT 0 ,
stadium_id int,
FOREIGN KEY (stadium_id) REFERENCES stadiums(id)
);

create table skills_data(
id int PRIMARY key AUTO_INCREMENT,
dribbling int  default 0,
pace  int default 0,
passing int default 0,
shooting int default 0,
speed int default 0,
strength int default 0
);

create table coaches(
id int PRIMARY key AUTO_INCREMENT,
first_name VARCHAR(10) not null,
last_name varchar(20) not null,
salary DECIMAL(10,2) not null DEFAULT 0,
coach_level int not null DEFAULT 0
);

create table players(
id int PRIMARY key AUTO_INCREMENT,
first_name varchar(10) not null,
last_name varchar(20) not null,
age int not null DEFAULT 0,
`position` CHAR(1) not null,
salary decimal(10,2) not null DEFAULT 0,
hire_date DATETIME,
skills_data_id int not null,
FOREIGN KEY (skills_data_id) REFERENCES skills_data(id),
team_id int,
FOREIGN KEY (team_id) REFERENCES teams(id)
);

create table players_coaches(
player_id int,
FOREIGN KEY (player_id) REFERENCES players(id),
coach_id int,
FOREIGN KEY (coach_id) REFERENCES coaches(id)
);