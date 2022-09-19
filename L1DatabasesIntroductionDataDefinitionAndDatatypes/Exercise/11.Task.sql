CREATE TABLE `directors` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `director_name` VARCHAR(50) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `genres` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `genre_name` VARCHAR(50) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `categories` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(50) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `movies` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `director_id` INT NOT NULL,
    `copyright_year`INT,
    `length` INT NOT NULL,
    `genre_id` INT NOT NULL,
    `category_id`INT NOT NULL,
    `rating` DOUBLE(4, 2),
    `notes` TEXT
);


INSERT INTO `directors` (`director_name`, `notes` )
VALUES
	('Name of Director 1', 'Notes for director 1'),
	('Name of Director 2', 'Notes for director 2'),
	('Name of Director 3', 'Notes for director 3'),
	('Name of Director 4', 'Notes for director 4'),
	('Name of Director 5', 'Notes for director 5');
    
    
INSERT INTO `genres` (`genre_name`, `notes`)
VALUES
	('Name of Genre 1', 'Notes for genre 1'),
	('Name of Genre 2', 'Notes for genre 2'),
	('Name of Genre 3', 'Notes for genre 3'),
	('Name of Genre 4', 'Notes for genre 4'),
	('Name of Genre 5', 'Notes for genre 5');
    
    
INSERT INTO `categories` (`category_name`, `notes`)
VALUES
	('Name of Category 1', 'Notes for category 1'),
	('Name of Category 2', 'Notes for category 2'),
	('Name of Category 3', 'Notes for category 3'),
	('Name of Category 4', 'Notes for category 4'),
	('Name of Category 5', 'Notes for category 5');
    
    
INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`,`category_id`,`rating`,`notes` )
VALUES
	('Title of Movie 1', 1, 1987, 23424234, 1, 1, 9.65, 'Notes for director 1'),
	('Title of Movie 2', 2, 1987, 23424234, 2, 2, 9.65, 'Notes for director 2'),
	('Title of Movie 3', 3, 1987, 23424234, 3, 3, 9.65, 'Notes for director 3'),
	('Title of Movie 4', 4, 1987, 23424234, 4, 4, 9.65, 'Notes for director 4'),
	('Title of Movie 5', 5, 1987, 23424234, 5, 5, 9.65, 'Notes for director 5');
