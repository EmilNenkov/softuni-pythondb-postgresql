SELECT
	last_name,
	COUNT(notes)
	AS notes_from_dumbledore
FROM 
	wizard_deposits
WHERE 
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name;
