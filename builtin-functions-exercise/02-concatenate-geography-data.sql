CREATE OR REPLACE VIEW
view_continents_countries_currencies_details
AS SELECT DISTINCT
    CONCAT(cont.continent_name, ': ', cont.continent_code) AS "Continent Details",
    CONCAT_WS(' - ', coun.country_name, coun.capital, coun.area_in_sq_km, 'km2') AS "Country Information",
    CONCAT(curr.description, ' ', '(', curr.currency_code, ')') AS "Currencies"
FROM
    continents AS cont
INNER JOIN countries AS coun
    ON cont.continent_code = coun.continent_code
INNER JOIN currencies AS curr
    ON coun.currency_code = curr.currency_code
ORDER BY 
    "Country Information",
    "Currencies";
