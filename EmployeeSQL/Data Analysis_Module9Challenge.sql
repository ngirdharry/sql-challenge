-- Data Analysis 

-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s
ON
e.emp_no=s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT e.last_name, e.first_name, e.hire_date 
FROM employees as e
WHERE hire_date LIKE '%1986';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
FROM employees as e

INNER JOIN dept_manager as de
ON
e.emp_no=de.emp_no

INNER JOIN departments as d
ON
d.dept_no = de.dept_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e

INNER JOIN dept_emp as de
ON
e.emp_no=de.emp_no

INNER JOIN departments as d
ON
d.dept_no = de.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT e.first_name, e.last_name,  e.sex
FROM employees as e
WHERE first_name= 'Hercules'
AND last_name Like 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e

INNER JOIN dept_emp as de
ON
e.emp_no=de.emp_no

INNER JOIN departments as d
ON
d.dept_no = de.dept_no

WHERE d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
ON
e.emp_no=de.emp_no
INNER JOIN departments as d
ON
d.dept_no = de.dept_no
WHERE d.dept_name in ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(last_name) as count
FROM employees
GROUP BY last_name
ORDER BY count desc;

-- End of Data Analysis 


