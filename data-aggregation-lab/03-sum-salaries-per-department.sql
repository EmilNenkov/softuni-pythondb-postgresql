SELECT 
	departments.id AS department_id, 
	SUM(
		employees.salary
	) AS total_salaries
FROM departments
INNER JOIN employees 
	ON 
employees.department_id = departments.id
GROUP BY
	departments.id,
	employees.department_id
ORDER BY 
	department_id;
