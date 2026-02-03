use practice
SELECT
c1.cust_name AS Customer1,
c2.cust_name AS Customer2,
c1.city
FROM customer AS c1
JOIN customer AS c2
ON c1.city = c2.city
AND c1.customer_id < c2.customer_id;
