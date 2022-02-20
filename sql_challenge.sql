
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