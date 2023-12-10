
WITH RentRanking AS (
    SELECT zipcode,
        AVG(value) AS average_rent, -- Using 'value' as it's the column name in Zillows table
        ROW_NUMBER() OVER (ORDER BY AVG(value) DESC) as rent_high_rank,
        ROW_NUMBER() OVER (ORDER BY AVG(value) ASC) as rent_low_rank
    FROM Zillows
    WHERE date >= '2023-01-01' AND date < '2023-02-01'
    GROUP BY zipcode
),
TreeCount AS (
    SELECT zipcode, COUNT(*) AS tree_count
    FROM Trees
    GROUP BY zipcode
),
ComplaintCount AS (
    SELECT zipcode, COUNT(*) AS complaint_count
    FROM Complaints
    WHERE created_date >= '2023-01-01' AND created_date < '2023-02-01'
    GROUP BY zipcode
)
SELECT
    R.zipcode,
    TO_CHAR(R.average_rent, 'FM9,999,999.00') AS formatted_average_rent, -- Format here
    COALESCE(T.tree_count, 0) as tree_count, -- Use COALESCE to handle nulls
    COALESCE(C.complaint_count, 0) as complaint_count -- Use COALESCE to handle nulls
FROM RentRanking R
LEFT JOIN TreeCount T ON R.zipcode = T.zipcode
LEFT JOIN ComplaintCount C ON R.zipcode = C.zipcode
WHERE R.rent_high_rank <= 5 OR R.rent_low_rank <= 5
ORDER BY R.rent_low_rank, R.rent_high_rank;

