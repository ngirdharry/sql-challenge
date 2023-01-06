-- Create Table 1:Departments table
CREATE TABLE departments (
    dept_no VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(10)   NOT NULL,
    PRIMARY KEY (dept_no)
);
-- View the departments table structure w/o data
SELECT * FROM departments;

-- import department data from csv

-- View the departments table w/ data 
SELECT * FROM departments;

-- Create Table 2: Department Employee table 

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(10)  NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        emp_no,dept_no
     )
);

-- View department employee table w/o data
SELECT * FROM dept_emp;

-- import department employee data from csv

-- View deptartment employee table w/ data
SELECT * FROM dept_emp;

-- Create Table 3:Department Managers 

CREATE TABLE dept_manager (
    emp_no INT   NOT NULL,
    dept_no VARCHAR (10)   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        emp_no,dept_no
     )
);

-- View table for deptartment managers w/o data

SELECT * FROM dept_manager

-- import department manager data from csv 

-- View table w/ data for department managers 

SELECT * FROM dept_manager

-- Create table 4: Employees Table 
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR   NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR    NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR    NOT NULL,
    hire_date VARCHAR   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

-- View table for employees w/o data
SELECT * FROM employees; 

--import employee data from csv 

-- View table for employees w/ data 
SELECT * FROM employees; 

-- Create Table 5: Salaries 

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
     )
);

-- View table for salaries w/o data 
SELECT * FROM salaries; 

-- Import salary data from csv 

-- View table for salaries w/ data 
SELECT * FROM salaries; 

-- Create Table 6: Job Title Table 

CREATE TABLE titles (
    title_id VARCHAR (7)   NOT NULL,
    title VARCHAR (30)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

-- View table for titles w/o data 
SELECT * FROM titles; 

-- import title data from csv 

-- View table for titles w/ data 
SELECT * FROM titles; 

--Alter tables to add foreign keys 

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title FOREIGN KEY(emp_title)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

-- End of Table Schema 