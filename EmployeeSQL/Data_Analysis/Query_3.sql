--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no,  d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
LEFT JOIN departments AS d ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e ON e.emp_no = dm.emp_no;