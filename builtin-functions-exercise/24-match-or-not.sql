SELECT 
	comanion_full_name,
	email
FROM 
	users
WHERE 
	comanion_full_name ILIKE '%aND%'
		AND 
	email NOT LIKE '%@gmail';
