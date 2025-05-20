USE world;
SELECT *
FROM country
WHERE Name LIKE "A%"
    AND Continent NOT LIKE "A%"
ORDER BY SurfaceArea;