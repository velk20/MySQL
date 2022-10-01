CREATE TABLE `majors` (
	`major_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(50)
);

CREATE TABLE `students` (
	`student_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `student_number` VARCHAR(12),
    `student_name` VARCHAR(50),
    `major_id` INT,
    CONSTRAINT `fk_students_mojors`
    FOREIGN KEY (`major_id`)
    REFERENCES `majors` (`major_id`)
);

CREATE TABLE `payments` (
	`payment_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `payment_date` DATE,
    `payment_amount` DECIMAL(8, 2),
    `student_id` INT,
    CONSTRAINT `fk_peyments_students`
    FOREIGN KEY (`student_id`)
    REFERENCES `students` (`student_id`)
);

CREATE TABLE `subjects` (
	`subject_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `subject_name` VARCHAR(50)
);

CREATE TABLE `agenda` (
	`subject_id` INT,
    `student_id` INT,
    CONSTRAINT `pk_students_subjects`
    PRIMARY KEY (`subject_id`, `student_id`),
    CONSTRAINT `fk_students_subjects`
    FOREIGN KEY (`subject_id`)
    REFERENCES `subjects` (`subject_id`),
    CONSTRAINT `fk_subjects_students`
    FOREIGN KEY (`student_id`)
    REFERENCES `students` (`student_id`)
);

