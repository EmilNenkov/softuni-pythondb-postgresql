SELECT
    population,
	LENGTH(CAST(population AS VARCHAR(10)))
FROM countries;
