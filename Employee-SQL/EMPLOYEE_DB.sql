-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create new table
CREATE TABLE departments (
	dept_no 		VARCHAR(4) 		NOT NULL,
	dept_name 		VARCHAR(40)		NOT NULL,
	UNIQUE (dept_name),
	PRIMARY KEY (dept_no)
);

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
	emp_no 			INT 		NOT NULL,
	emp_title 		VARCHAR 	NOT NULL,
	birth_date 		DATE 		NOT NULL,
	first_name 		VARCHAR 	NOT NULL,
	last_name 		VARCHAR 	NOT NULL,
	gender 			VARCHAR 	NOT NULL,
	hire_date 		DATE 		NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no 			INT 			NOT NULL,
	dept_no 		VARCHAR(4) 		NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES employees (dept_no)
);


-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
	dept_no 		VARCHAR,
	emp_no 			INT
);

-- View table columns and datatypes
SELECT * FROM dept_manager;









-- Drop table if exists
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

-- View table columns and datatypes
SELECT * FROM salaries;




-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

-- View table columns and datatypes
SELECT * FROM titles;