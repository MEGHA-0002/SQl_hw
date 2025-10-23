SELECT e.id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.id = d.emp_id;


SELECT e.id, e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.id = d.emp_id;


SELECT d.emp_id, d.department_name, e.name
FROM departments d
LEFT JOIN employees e
ON d.emp_id = e.id;

