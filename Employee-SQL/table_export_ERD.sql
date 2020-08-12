-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `departments` (
    `dept_no` VARCHAR(4)  NOT NULL ,
    `dept_name` VARCHAR(40)  NOT NULL ,
    PRIMARY KEY (
        `dept_no`
    ),
    CONSTRAINT `uc_departments_dept_name` UNIQUE (
        `dept_name`
    )
);

CREATE TABLE `employees` (
    `emp_no` INT  NOT NULL ,
    `emp_title` VARCHAR  NOT NULL ,
    `birth_date` DATE  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
    `gender` VARCHAR  NOT NULL ,
    `hire_date` DATE  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    ),
    CONSTRAINT `uc_employees_emp_title` UNIQUE (
        `emp_title`
    )
);

CREATE TABLE `dept_emp` (
    `emp_no` INT  NOT NULL ,
    `dept_no` VARCHAR(4)  NOT NULL ,
    PRIMARY KEY (
        `emp_no`,`dept_no`
    )
);

CREATE TABLE `dept_manager` (
    `dept_no` VARCHAR(4)  NOT NULL ,
    `emp_no` INT  NOT NULL ,
    PRIMARY KEY (
        `dept_no`,`emp_no`
    )
);

CREATE TABLE `salaries` (
    `emp_no` INT  NOT NULL ,
    `salary` INT  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `titles` (
    `title_id` VARCHAR  NOT NULL ,
    `title` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `title_id`
    )
);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `departments` (`dept_no`);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept_manager_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `departments` (`dept_no`);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept_manager_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

ALTER TABLE `salaries` ADD CONSTRAINT `fk_salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

ALTER TABLE `titles` ADD CONSTRAINT `fk_titles_title_id` FOREIGN KEY(`title_id`)
REFERENCES `employees` (`emp_title`);

