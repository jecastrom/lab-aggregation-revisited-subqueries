SELECT
    concat((first_name), ' ', (last_name)) rental_customers,
    email
FROM
    rental r
    INNER JOIN customer USING (customer_id)
GROUP BY
    2
ORDER BY
    1
LIMIT
    5;