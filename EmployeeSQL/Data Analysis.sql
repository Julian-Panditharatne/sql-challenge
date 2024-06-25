-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	FROM employees as e
	JOIN salaries as s ON
	e.emp_no = s.emp_no
	ORDER BY e.emp_no ASC;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
		FROM employees
		WHERE EXTRACT(YEAR FROM hire_date) = 1986
		ORDER BY emp_no ASC;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
	FROM dept_manager as dm
	INNER JOIN departments as d ON
	dm.dept_no = d.dept_no
	INNER JOIN employees as e ON
	dm.emp_no = e.emp_no
	ORDER BY dm.dept_no ASC;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees as e
	INNER JOIN dept_emp as de ON
	e.emp_no = de.emp_no
	INNER JOIN departments as d ON
	de.dept_no = d.dept_no
	ORDER BY e.emp_no ASC;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name
	FROM employees as e
	INNER JOIN dept_emp as de ON
	e.emp_no = de.emp_no
	INNER JOIN departments as d ON
	de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	ORDER BY de.emp_no ASC;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees as e
	INNER JOIN dept_emp as de ON
	e.emp_no = de.emp_no
	INNER JOIN departments as d ON
	de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
	ORDER BY de.emp_no ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
