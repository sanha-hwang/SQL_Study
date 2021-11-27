
SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) as 'DOCTOR',
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) as 'Professor',
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) as 'Singer',
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) as 'Actor'
FROM 
    (SELECT Name, 
            Occupation, 
            row_number() over 
                            (PARTITION BY Occupation ORDER BY name) Rnum 
     FROM OCCUPATIONS) NewT
GROUP BY NewT.Rnum