SELECT
    DISTINCT concat(c.first_name, ' ', c.last_name) customer_name,
    c.email,
    cat.name type_movies_rented
FROM
    rental r
    INNER JOIN customer c USING (customer_id)
    INNER JOIN inventory i USING (inventory_id)
    INNER JOIN film_category fc ON i.film_id = fc.film_id
    INNER JOIN category cat USING (category_id)
WHERE
    cat.name = 'Action'
ORDER BY
    customer_name
LIMIT
    5;