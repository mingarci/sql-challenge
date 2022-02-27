
--*perform inner join
--*List the following details of each employee: 
--*employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees 
INNER JOIN salaries
    ON employees.emp_no = salaries.emp_no;


--* List first name, last name, and hire date 
--*for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01'
             AND hire_date < '1987-01-01';


--*List the manager of each department with the following 
--*information: department number, department name, 
--*the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, 
dept_name, 
employees.emp_no, 
employees.last_name, 
employees.first_name 
FROM employees 
INNER JOIN dept_manager
    ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
    ON dept_manager.dept_no = departments.dept_no;

--*List the department of each employee with the following information: 
--*employee number, last name, first name, and department name.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,  
dept_name 
FROM employees 
INNER JOIN dept_emp
    ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no;

--* 5. List first name, last name, and sex 
--* for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
from employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules';