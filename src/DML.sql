use practice

/** SELECT * FROM stud_details
 ORDER BY marks DESC **/
-- WHERE name LIKE 'M%'

/** 
SELECT  *  FROM stud_Details 
WHERE marks IN (
	SELECT DISTINCT marks 
	FROM stud_details
	)
	**/

--top 2 marks 

SELECT TOP  2 * 
FROM stud_details
ORDER BY marks DESC  


