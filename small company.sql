-- employees table created

CREATE TABLE employees(id INT, name VARCHAR(30));
INSERT INTO employees(id,name)
VALUES(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Meena');

-- departments table created

CREATE TABLE departments(emp_id INT, department_name VARCHAR(30));
INSERT INTO departments(emp_id,department_name)
VALUES(1, 'HR'),
(2, 'IT'),
(4, 'Finance');

-- Show all employees with their department name

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

-- Show only those employees who have a department assigned.

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

-- Show all department assignments, even if the employee doesn’t exist in the employee table-- employees table

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.id = departments.emp_id;

