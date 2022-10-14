create table addresses(
id int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(100) not null
);

create table categories(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(10) not null
);

create table clients(
id int PRIMARY key AUTO_INCREMENT,
full_name VARCHAR(50) 	not null,
phone_number varchar(20) not null
);

create table drivers(
id int PRIMARY key AUTO_INCREMENT,
first_name 	VARCHAR(30) not null,
last_name varchar(30) not null,
age int not null,
rating float DEFAULT 5.5
);

create table cars(
id int PRIMARY key AUTO_INCREMENT,
make varchar(20) not null,
model varchar(20),
`year` int not null DEFAULT 0,
mileage int DEFAULT 0,
`condition`  char(1) not null,
category_id int not null,
CONSTRAINT fk_cars_categories
FOREIGN KEY (category_id) REFERENCES categories(id)
 );
 
 create table courses(
 id int PRIMARY key AUTO_INCREMENT,
 from_address_id int not null,
 CONSTRAINT fk_courses_addresses
 FOREIGN KEY (from_address_id) REFERENCES addresses(id),
 `start` datetime not null,
 bill decimal(10,2) DEFAULT 10,
 car_id int not null,
 CONSTRAINT fk_courses_cars
 FOREIGN KEY (car_id) REFERENCES cars(id),
 client_id int not null,
 CONSTRAINT fk_courses_clients
 FOREIGN KEY (client_id) REFERENCES clients(id)
  );
  
  create table cars_drivers(
  car_id int not null,
  driver_id int not null,
  PRIMARY KEY(car_id,driver_id),
  CONSTRAINT fk_cars_drivers
  FOREIGN KEY (car_id) REFERENCES cars(id),
  CONSTRAINT fk_driver_cars
  FOREIGN KEY(driver_id) REFERENCES drivers(id)
  );



