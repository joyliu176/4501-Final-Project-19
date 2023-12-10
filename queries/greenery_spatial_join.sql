
SELECT z.zipcode, COUNT(t.tree_id) AS tree_count
FROM zipcodes z
JOIN trees t ON z.zipcode = t.zipcode
WHERE ST_Within(t.geometry, z.geometry)
GROUP BY z.zipcode
ORDER BY tree_count DESC
LIMIT 10;

