USE world;
SELECT *
FROM country
WHERE GNP <= 1000
    AND Continent = "Africa"
    AND Region <> "Eastern Africa";