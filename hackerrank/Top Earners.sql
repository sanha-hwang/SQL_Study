/* MY SQL */

SELECT
months*salary as top_earning,
COUNT(employee_id)
FROM Employee
GROUP BY top_earning
ORDER BY top_earning DESC
LIMIT 1;