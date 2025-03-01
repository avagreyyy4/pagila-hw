/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT customer_id, first_name, last_name, SUM(amount) as "sum"
FROM customer
JOIN payment USING (customer_id)
GROUP BY first_name, last_name, customer_id
ORDER BY last_name;
