create schema instd;

use instd;
 
 create table users(
 id int primary key,
 username varchar(30) not null unique,
 `password` varchar(30) not null,
 email varchar(50) not null,
 gender char(1) not null,
 age int not null,
 job_title varchar(40) not null,
 ip varchar(30) not null
 );
 
 create table addresses(
 id int primary key auto_increment,
 address varchar(30) not null,
 town varchar(30) not null,
 country varchar(30) not null,
 user_id int,
 constraint fk_addresses_users
 foreign key (user_id)
 references users(id)
 );
 
 create table photos(
 id int primary key auto_increment,
`description` text not null,
`date` datetime not null,
views int not null default 0
 );
 
 create table comments(
 id int primary key auto_increment,
 `comment` varchar(255) not null,
 `date` datetime not null,
 photo_id int,
 constraint fk_comments_photos
 foreign key (photo_id)
 references photos(id)
 );
 
 create table users_photos(
 user_id int,
 constraint fk_User_photo
 foreign key (user_id)references users(id),
 photo_id int,
 constraint fk_photos_users
 foreign key (photo_id) references photos(id)
 );
 
 create table likes(
 id int primary key auto_increment,
 photo_id int,
 constraint fk_lieks_photos
 foreign key (photo_id) references photos(id),
 user_id int,
 constraint fk_likes_users
 foreign key (user_id) references users(id)
 );
 
 
 