
-- Create Departments Table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE,
    salary NUMBER(10, 2),
    hire_date DATE,
    department_id NUMBER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
