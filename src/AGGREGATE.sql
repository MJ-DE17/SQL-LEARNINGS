USE DQL_Practice
--Count total students
SELECT COUNT(*) AS toatl_count 
FROM Students 

--Find total marks scored by all students
SELECT SUM(Marks) AS sum
FROM Students 

--Find average marks of all students
SELECT AVG(Marks) AS avg
FROM Students 

--Find highest and lowest marks

SELECT MIN(Marks) AS min
FROM Students 
SELECT MAX(Marks) AS max 
FROM Students 

SELECT *
FROM Students 

--Show departments with more than 1 students
SELECT Department , COUNT(Name) as count 
FROM Students
GROUP BY Department
HAVING COUNT(NAME) > 1

--std dev 
SELECT STDEV(Marks) FROM Students

--Find departments where average marks > 70
SELECT Department , AVG(Marks) as avg 
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 70


--Count students age wise
SELECT 
CASE 
WHEN Age = 19 THEN 'YOUNG'
WHEN Age BETWEEN 20 AND 29 THEN 'MID'
ELSE 'SENIOR'
END AS Age_grp,
COUNT(*) AS count_ppl
FROM Students
GROUP BY 
CASE
WHEN Age = 19 THEN 'YOUNG'
WHEN Age BETWEEN 20 AND 29 THEN 'MID'
ELSE 'SENIOR'
END
