
-- c naenm , city , oder-no , od
--date , oder mat , in asc ordeate 

SELECT c.cust_name,c.city , o.ord_no , o.ord_date ,o.purch_amt 
FROM customer AS c
LEFT OUTER JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY o.purch_amt ASC 

select s.name , s.salesman_id ,c.cust_name
from salesman as s
left outer join customer as c
on c.salesman_id = s.salesman_id

select s.name , s.salesman_id ,c.cust_name
from salesman as s
right outer join customer as c
on c.salesman_id = s.salesman_id


select s.name , s.salesman_id ,c.cust_name
from salesman as s
full outer join customer as c
on c.salesman_id = s.salesman_id