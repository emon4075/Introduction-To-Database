USE world;
SELECT *
FROM country
WHERE GNP BETWEEN 1000 AND 2000
    AND Continent IN ('Asia', 'Africa');