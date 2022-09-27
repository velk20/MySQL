CREATE TABLE people (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    salary decimal(10,2),
    passport_id INT UNIQUE
);

CREATE TABLE passports (
    passport_id INT PRIMARY KEY AUTO_INCREMENT,
    passport_number VARCHAR(50) UNIQUE
)  AUTO_INCREMENT=101;

alter table people 
add FOREIGN KEY (passport_id) REFERENCES passports(passport_id);

insert INTO passports (passport_number)
values('N34FG21B'),
('K65LO4R7'),
('ZE657QP2');

insert into people (first_name,salary,passport_id)
values('Roberto',43300.00,102),
('Tom',56100.00,103),
('Yana',60200.00,101);
		


