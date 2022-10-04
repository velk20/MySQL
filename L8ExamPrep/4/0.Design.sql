

create table brands(
id 	int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(40) not null UNIQUE
);

create table categories(
id 	int PRIMARY key AUTO_INCREMENT,
`name` VARCHAR(40) not null UNIQUE
);

create table reviews(
id int PRIMARY key AUTO_INCREMENT,
content text,
rating DECIMAL(10,2) not null,
picture_url varchar(80) not null,
published_at datetime not null
);

create table products(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(40) not null,
price 	decimal(19,2) not null,
quantity_in_stock int,
`description` text,
brand_id int not null,
CONSTRAINT fk_products_brands
FOREIGN KEY (brand_id) REFERENCES brands(id),
category_id int not null,
CONSTRAINT fk_products_categories
FOREIGN KEY (category_id) REFERENCES categories(id),
review_id int,
CONSTRAINT fk_products_reviews
FOREIGN KEY (review_id) REFERENCES reviews(id)
);

create table customers(
id int PRIMARY key AUTO_INCREMENT,
first_name varchar(20) not null,
last_name varchar(20) not null,
phone VARCHAR(30) not null UNIQUE,
address varchar(60) not null,
discount_card BIT(1) not null DEFAULT 0
);

CREATE table orders(
id int PRIMARY key AUTO_INCREMENT,
order_datetime DATETIME not null,
customer_id int not null,
CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

create table orders_products(
order_id int ,
product_id int,
CONSTRAINT fk_op_orders
FOREIGN KEY (order_id) REFERENCES orders(id),
CONSTRAINT fk_op_products
FOREIGN KEY (product_id) REFERENCES products(id)
);







