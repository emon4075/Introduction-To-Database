USE csecu;
SELECT studentName
FROM odhrubo
WHERE studentID % 2 = 1 AND CG >= 3.5;