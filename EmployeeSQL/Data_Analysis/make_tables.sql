--1. Create a titles table

CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
    PRIMARY KEY (title_id)
);
-- 2. READ IN CSV for titles
COPY titles(title_id, title)
FROM '/tmp/titles.csv' DELIMITER ',' CSV HEADER;

-- 3. Create an employees table
CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex char(1)   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- 4. Import CSV for employees
COPY Employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM '/tmp/employees.csv' DELIMITER ',' CSV HEADER;

-- 5. Create a department manager table
	CREATE TABLE dept_manager (
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

-- 6. Read in dept_manager CSV
COPY dept_manager(dept_no, emp_no)
FROM '/tmp/dept_manager.csv' DELIMITER ',' CSV HEADER;	

-- 7. Create salaries table
CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- 8. Import CSV for salaries
COPY salaries(emp_no, salary)
FROM '/tmp/salaries.csv' DELIMITER ',' CSV HEADER;

-- 9. Create dept_emp table
CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- 10. Read in the dept_emp CSV
COPY dept_emp(emp_no, dept_no)
FROM '/tmp/dept_emp.csv' DELIMITER ',' CSV HEADER;