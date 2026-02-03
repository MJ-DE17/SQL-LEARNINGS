USE practice

SELECT S.name , 
C.cust_name,
S.city
FROM salesman AS S
INNER JOIN customer AS C
ON S.city = C.city

SELECT * FROM salesman;
SELECT * FROM customer;
SELECT * FROM orders;

SELECT O.ord_no , O.ord_date,O.purch_amt , C.cust_name , C.grade , S.name , S.commission
FROM customer AS C
JOIN orders AS O
ON C.customer_id = O.customer_id
JOIN salesman AS S
ON S.salesman_id = C.salesman_id



SELECT c.cust_name , c.city , s.name, s.commission
from customer AS c 
JOIN salesman AS s
ON s.salesman_id = s.salesman_id



SELECT c.cust_name , c.city , s.name, s.commission
from customer AS c 
JOIN salesman AS s
ON s.salesman_id = s.salesman_id
WHERE s.commission > 0.12



SELECT c.cust_name , c.city , s.name,s.city, s.commission
from customer AS c 
JOIN salesman AS s
ON s.salesman_id = s.salesman_id
WHERE s.commission > 0.12 and  s.city <>c.city



SELECT O.ord_no , 
O.ord_date,
O.purch_amt , 
C.cust_name , 
C.grade,
S.name AS Salesman,
S.commission
FROM customer AS C
JOIN orders AS O
ON C.customer_id = O.customer_id
JOIN salesman AS S
ON S.salesman_id =  C.salesman_id;
