SELECT 
	departments.id AS department_id, 
	COUNT(
		employees.department_id
	) 
	AS employee_count
FROM departments
INNER JOIN employees 
	ON 
employees.department_id = departments.id
GROUP BY
	departments.id,
	employees.department_id
ORDER BY 
	department_id;
