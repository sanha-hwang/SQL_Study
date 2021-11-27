
SELECT N,
    (CASE 
        WHEN P is NULL THEN 'Root'
        WHEN N NOT IN (SELECT DISTINCT(P) FROM BST WHERE P is not null) THEN 'Leaf'
        ELSE 'Inner' END 
    ) as NodeType 
FROM BST
ORDER BY N;