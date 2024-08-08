CREATE DATABASE simple_company;
USE simple_company;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Engineering');

INSERT INTO employees (first_name, last_name, department_id) VALUES
('John', 'Doe', 1),
('Jane', 'Smith', 2),
('Sam', 'Johnson', 3),
('Chris', 'Lee', 1),
('Anna', 'Taylor', 2);

INSERT INTO projects (project_name, employee_id) VALUES
('Project Alpha', 1),
('Project Beta', 2),
('Project Gamma', 3),
('Project Delta', 4),
('Project Epsilon', 5);

-- INNER JOIN 1
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN projects AS p ON e.employee_id = p.employee_id;

-- INNER JOIN 2
SELECT e.employee_id, e.first_name, p.project_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN projects AS p ON e.employee_id = p.employee_id;

-- INNER JOIN 3
SELECT e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN projects AS p ON e.employee_id = p.employee_id;

-- INNER JOIN 4
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN projects AS p ON e.employee_id = p.employee_id;

-- INNER JOIN 5
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN projects AS p ON e.employee_id = p.employee_id;