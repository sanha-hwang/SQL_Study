WITH RECURSIVE cte AS
(
  SELECT 0 as HOUR
  UNION ALL
  SELECT HOUR + 1 
  FROM cte WHERE HOUR < 23
)

SELECT cte.HOUR, COUNT(ANIMAL_OUTS.ANIMAL_ID)
FROM cte
LEFT JOIN ANIMAL_OUTS
ON cte.HOUR = HOUR(ANIMAL_OUTS.DATETIME)
GROUP BY cte.HOUR
