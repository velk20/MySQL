create table countries(
id int primary key auto_increment,
`name` varchar(30) not null unique,
continent varchar(30) not null,
currency varchar(5) not null
);

create table genres(
id int primary key auto_increment,
`name` varchar(50) not null unique
);

create table actors(
id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
birthdate date not null,
height int,
awards int,
country_id int not null,
constraint fk_actors_countries
foreign key (country_id) references countries(id)
);

create table movies_additional_info(
id int primary key auto_increment,
rating decimal(10,2) not null,
runtime int not null,
picture_url varchar(80) not null,
budget decimal(10,2),
release_date date not null,
has_subtitles tinyint(1),
`description` text
);

create table movies(
id int primary key auto_increment,
title varchar(70) not null unique,
country_id int not null,
constraint fk_movies_countries
foreign key (country_id) references countries(id),
movie_info_id int not null unique,
constraint fk_movies_movies_additional_info
foreign key (movie_info_id) references movies_additional_info(id)
);

create table movies_actors(
movie_id int ,
constraint fk_movies_actors 
foreign key (movie_id) references movies(id),
actor_id int,
constraint fk_actors_movies
foreign key (actor_id) references actors(id)
);

create table genres_movies(
genre_id int,
constraint fk_genres_movies
foreign key (genre_id) references genres(id),
movie_id int,
constraint fk_movies_genres
foreign key (movie_id) references movies(id)
);




