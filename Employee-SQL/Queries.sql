Queries:

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;
	
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	employee.emp_no,
	employee.last_name
	employee.first_name

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
	employee.first_name
	employee.last_name
	employee.sex
	
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
	employee.emp_no
	
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

