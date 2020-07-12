-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'