
WITH ZipCodesWithMostTrees AS (
    SELECT zipcode, COUNT(*) AS tree_count
    FROM trees
    GROUP BY zipcode
    ORDER BY tree_count DESC
    LIMIT 10
)
SELECT z.zipcode, TO_CHAR(AVG(z.value), 'FM9,999,999.99') AS average_rent
FROM Zillows z
JOIN ZipCodesWithMostTrees t ON z.zipcode = t.zipcode
WHERE EXTRACT(MONTH FROM z.date) = 8 AND EXTRACT(YEAR FROM z.date) = 2023
GROUP BY z.zipcode, t.tree_count
ORDER BY t.tree_count DESC;

