SELECT
	"id",
	"number" || ' ' || street
	AS "Address",
	city_id
FROM addresses 
WHERE id >= 20;
