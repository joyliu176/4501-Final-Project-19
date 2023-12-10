
SELECT zipcode, COUNT(*) AS complaint_count
FROM complaints
WHERE created_date >= '2022-10-01' AND created_date <= '2023-09-30'
GROUP BY zipcode
ORDER BY complaint_count DESC;
