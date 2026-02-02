use practice

/** UPDATE stud_details SET marks = 100 ,email = 'topper1@gmail.com' WHERE stud_ID = 2;
SELECT * FROM  stud_details **/

--update in sub quesry

/** UPDATE stud_details 
SET marks = 60
WHERE stud_ID IN 
	(SELECT stud_ID FROM stud_details	
	WHERE marks < 60);

SELECT * FROM stud_details

**/

-- ALTER TABLE stud_details
-- ADD  status VARCHAR(10)



UPDATE stud_details
SET status = CASE
	WHEN marks >= 70 
		THEN 'PASS'
	ELSE 'FAIL'

END;

UPDATE stud_details
SET email = 'unkonwnemail.com'
WHERE email IS NULL


SELECT * FROM stud_details