SELECT
    *,
    CASE
        WHEN amount <= 2 THEN "low"
        WHEN amount <= 4 THEN "medium"
        WHEN amount > 4 THEN "high"
    END AS classified_as
FROM
    payment
LIMIT
    5;