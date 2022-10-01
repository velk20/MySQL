create table cities(
city_id int PRIMARY key AUTO_INCREMENT,
`name` varchar(50) not null
);

create table item_types(
item_type_id int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(50) not null
);

create table customers(
customer_id int PRIMARY key AUTO_INCREMENT,
`name` varchar(50) not null,
birthday Date not null,
city_id int not null,
CONSTRAINT fk_customers_cities
FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

create table items(
item_id int PRIMARY key AUTO_INCREMENT,
`name` varchar(50) not null,
item_type_id int not null,
CONSTRAINT fk_items_types
FOREIGN KEY (item_type_id) REFERENCES item_types(item_type_id)
);

create table orders(
order_id int PRIMARY key AUTO_INCREMENT,
customer_id int not null,
CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

create table order_items(
order_id int not null,
item_id int not null,
CONSTRAINT fk_orders_items
FOREIGN KEY (order_id) REFERENCES orders(order_id),
CONSTRAINT fk_items_orders
FOREIGN KEY (item_id) REFERENCES items(item_id)
);