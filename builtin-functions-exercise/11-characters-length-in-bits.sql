SELECT
    mountains.mountain_range || ' ' || peaks.peak_name
        AS "Mountain Information",
    LENGTH(mountains.mountain_range || ' ' || peaks.peak_name)
        AS "Characters Length",
    BIT_LENGTH(mountains.mountain_range || ' ' || peaks.peak_name)
        AS "Bits of a String"
FROM 
    mountains
INNER JOIN peaks ON mountains.id = peaks.mountain_id;
