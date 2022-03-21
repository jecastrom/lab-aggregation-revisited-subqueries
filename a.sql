SELECT
    c.customer_id,
    concat((c.first_name), ' ', (c.last_name)) rental_customers,
    c.email,
    format(avg(p.amount), 2, 'de_DE') average_payment_made
FROM
    payment p
    INNER JOIN customer c USING (customer_id)
GROUP BY
    1
ORDER BY
    2
LIMIT
    5;