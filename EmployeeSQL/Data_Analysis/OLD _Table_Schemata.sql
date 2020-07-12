-- 1. Create a Departments table
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

--2. Import CSV.
COPY departments(dept_no, dept_name)
FROM '/tmp/departments.csv' DELIMITER ',' CSV HEADER;

-- 3. Create Employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date date,
    first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date
);	

-- 4. Import CSV 
COPY Employees (emp_no, emp_title_id, birth_date, first_name, last_name, gender, hire_date)
FROM '/tmp/employees.csv' DELIMITER ',' CSV HEADER;
