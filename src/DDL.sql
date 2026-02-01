USE practice

-- CREATE :Create table students
-- CREATE TABLE students(
-- id INT PRIMARY KEY ,
-- name VARCHAR(100) NOT NULL,
-- class INT CHECK ( class <=12 AND class > 0)  );

--VALUES
/**INSERT INTO students(id , name , class)
VALUES(
2,'Vaish',10)**/

--modilfy ADD Add column email

/** ALTER TABLE students
ADD email VARCHAR(100)**/

-- ALTER CHNAGE COLOUMN NAME
 
 --ALTER TABLE students 
-- EXEC sp_rename 'dbo.students.id' , 'stud_id' , 'COLUMN';


-- RENAME TABLE
-- EXEC sp_rename 'dbo.students' , 'stud_details';

--MODIFY NAME

/** ALTER TABLE stud_details
ALTER COLUMN name VARCHAR(150)**/

INSERT INTO stud_details (stud_id, name, class ,email)
VALUES
(3, 'Mevin', 11 ,'mevin@gmail.com'),
(4, 'Pavithra', 12 ,'pavi@gmail.com');


SELECT * FROM stud_details