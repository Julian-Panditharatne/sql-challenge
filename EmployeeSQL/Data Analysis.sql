-- List the employee number, last name, first name, sex, and salary of each employee.
CREATE OR REPLACE VIEW public.list_1
	AS
	SELECT e.emp_no,
	    e.last_name,
	    e.first_name,
	    e.sex,
	    s.salary
	FROM employees AS e
	JOIN salaries AS s
		ON e.emp_no = s.emp_no
	ORDER BY e.emp_no ASC;


ALTER TABLE public.list_1
    OWNER TO postgres;

SELECT * FROM public.list_1;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
CREATE OR REPLACE VIEW public.list_2
	AS
	SELECT first_name, 
		last_name, 
		hire_date
		FROM employees
		WHERE EXTRACT(YEAR FROM hire_date) = 1986
		ORDER BY emp_no ASC;

ALTER TABLE public.list_2
    OWNER TO postgres;

SELECT * FROM public.list_2;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
CREATE OR REPLACE VIEW public.list_3
	AS
	SELECT dm.dept_no, 
		d.dept_name, 
		dm.emp_no, 
		e.last_name, 
		e.first_name
		FROM dept_manager AS dm
		INNER JOIN departments AS d ON
		dm.dept_no = d.dept_no
		INNER JOIN employees AS e ON
		dm.emp_no = e.emp_no
		ORDER BY e.emp_no ASC;

ALTER TABLE public.list_3
    OWNER TO postgres;

SELECT * FROM public.list_3;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
CREATE OR REPLACE VIEW public.list_4
	AS
	SELECT de.dept_no, 
		de.emp_no, 
		e.last_name, 
		e.first_name, 
		d.dept_name
		FROM employees AS e
		INNER JOIN dept_emp AS de ON
		e.emp_no = de.emp_no
		INNER JOIN departments AS d ON
		de.dept_no = d.dept_no
		ORDER BY e.emp_no ASC;

ALTER TABLE public.list_4
    OWNER TO postgres;

SELECT * FROM public.list_4;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
CREATE OR REPLACE VIEW public.list_5
	AS
	SELECT e.first_name, e.last_name, e.sex
	FROM employees AS e
	WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%'
	ORDER BY e.last_name;

ALTER TABLE public.list_5
    OWNER TO postgres;

SELECT * FROM public.list_5;

-- List each employee in the Sales department, including their employee number, last name, and first name.
CREATE OR REPLACE VIEW public.list_6
	AS
	SELECT l.emp_no, l.last_name, l.first_name
		FROM list_4 AS l
		WHERE l.dept_name = 'Sales'
		ORDER BY l.emp_no ASC;

ALTER TABLE public.list_6
    OWNER TO postgres;

SELECT * FROM public.list_6;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE OR REPLACE VIEW public.list_7
	AS
	SELECT l.emp_no, l.last_name, l.first_name, l.dept_name
		FROM list_4 AS l
		WHERE l.dept_name = 'Sales'
		OR l.dept_name = 'Development'
		ORDER BY l.emp_no ASC;

ALTER TABLE public.list_7
    OWNER TO postgres;

SELECT * FROM public.list_7;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
CREATE OR REPLACE VIEW public.list_8
	AS
	SELECT e.last_name AS "last name", COUNT(e.emp_no) AS "employees count"
		FROM employees AS e
		GROUP BY e.last_name
		ORDER BY "employees count" DESC;

ALTER TABLE public.list_8
    OWNER TO postgres;

SELECT * FROM public.list_8;
	