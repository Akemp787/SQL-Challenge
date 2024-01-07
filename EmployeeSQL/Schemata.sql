-- Data Engineering
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Departments table:
CREATE TABLE departments (
    dept_no VARCHAR(50) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

-- Department Employees table:
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(50) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Department Managers table:
CREATE TABLE dept_manager (
    dept_no VARCHAR(50) NOT NULL,
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Employees table:
CREATE TABLE employees (	
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(50), 
    birth_date DATE, 
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(10),
    hire_date DATE
);

-- Salaries table:
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT
);

-- Titles table:
CREATE TABLE titles (
    title_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);


SELECT * FROM departments;
SELECT * FROM titles;	
SELECT * FROM employees;	
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;	
SELECT * FROM salaries;

