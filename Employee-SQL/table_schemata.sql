DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no 		VARCHAR(4) 		NOT NULL,
	dept_name 		VARCHAR(40)		NOT NULL,
	UNIQUE (dept_name),
	PRIMARY KEY (dept_no)
);


DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no 			INT 		NOT NULL,
	emp_title 		VARCHAR 	NOT NULL,
	birth_date 		DATE 		NOT NULL,
	first_name 		VARCHAR 	NOT NULL,
	last_name 		VARCHAR 	NOT NULL,
	gender 			VARCHAR 	NOT NULL,
	hire_date 		DATE 		NOT NULL,
	UNIQUE (emp_title),
	PRIMARY KEY (emp_no)
);


DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no 			INT 			NOT NULL,
	dept_no 		VARCHAR(4) 		NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no 		VARCHAR(4)	NOT NULL,
	emp_no 			INT			NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no 			INT		NOT NULL,
	salary 			INT		NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)	
);


DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id 		VARCHAR		NOT NULL,
	title 			VARCHAR		NOT NULL,
	PRIMARY KEY (title_id),
	FOREIGN KEY (title_id) REFERENCES employees (emp_title)
);