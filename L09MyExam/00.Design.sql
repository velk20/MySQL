create database exam;
use exam;

create table products(
id int primary key auto_increment,
`name` varchar(30) not null unique,
`type` varchar(30) not null,
price decimal(10,2) not null
);

create table clients(
id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
birthdate date not null,
card varchar(50),
review text
);

create table `tables`(
id int primary key auto_increment,
`floor` int not null,
reserved tinyint(1),
capacity int not null
);

create table waiters(
id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) not null,
phone varchar(50),
salary decimal(10,2)
);

create table orders(
id int primary key auto_increment,
table_id int not null,
constraint fk_orders_tables
foreign key (table_id) references `tables`(id),
waiter_id int not null,
constraint fk_orders_waiters
foreign key (waiter_id) references waiters(id),
order_time time not null,
payed_status tinyint(1)
);

create table orders_clients(
order_id int,
client_id int,
constraint fk_orders_clients
foreign key (order_id) references orders(id),
constraint fk_clients_orders
foreign key (client_id) references clients(id)
);

create table orders_products(
order_id int,
product_id int,
constraint fk_orders_products
foreign key (order_id) references orders(id),
constraint fk_products_orders
foreign key (product_id) references products(id)
);