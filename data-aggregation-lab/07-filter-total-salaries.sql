SELECT 
	departments.id AS department_id, 
	SUM(employees.salary) AS "Total salary"
FROM departments
INNER JOIN employees 
	ON 
employees.department_id = departments.id
GROUP BY
	departments.id,
	employees.department_id
HAVING SUM(employees.salary) < 4200
ORDER BY
	department_id;
