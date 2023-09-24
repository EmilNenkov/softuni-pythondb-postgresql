SELECT 
	e.id, 
	CONCAT(e.first_name, ' ', e.last_name) AS "Full Name",
	e.job_title AS "Job Title"
FROM employees AS e;
