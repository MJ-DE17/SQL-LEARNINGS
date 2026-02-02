--COALESCE -Display email as 'Not Provided' if NULL
SELECT Name , COALESCE(Email , 'Not Given ') AS Email 
From Students

SELECT * FROM Students
ORDER BY Marks DESC , Name ASC

--total no of studs
SELECT COUNT(*) AS Toatl_Students FROM Students 

--AVG SUM MIN MAX
SELECT 
AVG(Marks) AS Average_marks,
MAX(Marks) AS Highest,
MIN(Marks) AS Lowest
FROM Students

--Average marks per department.
SELECT Department , AVG(Marks) AS Average_marks
FROM Students
GROUP BY  Department

--Departments with avg marks above 70.
SELECT Department , AVG(Marks) AS Average_marks
FROM Students
GROUP BY  Department
HAVING AVG(Marks) > 50