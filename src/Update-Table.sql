--update new column

ALTER TABLE Students
ADD City VARCHAR(50)

UPDATE Students
SET City = 'Karnool'
WHERE StudentID IN (4)