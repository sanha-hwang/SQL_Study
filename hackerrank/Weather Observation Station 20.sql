
SET @rowindex := -1;
SELECT ROUND(AVG(LAT_N),4) as median 
FROM (SELECT @rowindex := @rowindex +1 as RowNumber, lat_n
     FROM STATION
     ORDER BY LAT_N) sub
WHERE RowNumber IN (FLOOR(@rowindex/2),Ceil(@rowindex/2))