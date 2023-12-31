SELECT 
	departments.id AS department_id, 
	MIN(
		employees.salary
	) AS min_salary
FROM departments
INNER JOIN employees 
	ON 
employees.department_id = departments.id
GROUP BY
	departments.id,
	employees.department_id
ORDER BY 
	department_id;
