USE practice

SELECT Name FROM Students
WHERE  Name LIKE '%i' -- should conatin a at any pos
-- M% starts th
-- %i ends with

SELECT * FROM Students
WHERE marks IN (
SELECT AVG(Marks) FROM Students	