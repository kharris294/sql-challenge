--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS dm ON e.emp_no = dm.emp_no
LEFT JOIN departments AS d ON d.dept_no = dm.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees AS e, dept_emp AS de, departments as d
WHERE e.emp_no = de.emp_no AND de.dept_no = d.dept_no;