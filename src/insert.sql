use practice

--  used to remove the contrasints on the def lang 
/** ALTER TABLE stud_details
DROP CONSTRAINT CK__students__class__5165187F; **/

/** ALTER TABLE stud_details
ALTER  COLUMN [class] VARCHAR(10) **/

--erilier the class was in int now its varchar 
-- and the clss was used in the where check keyword so was nt abel to edi t it then i used the the ist cmmad to pass on to it so it is removed

INSERT INTO stud_details (stud_ID, name, class, email, marks, status) VALUES
(1, 'Aarav',   '10-A', 'aarav@gmail.com',   85, 'Pass'),
(2, 'Diya',    '10-A', 'diya@gmail.com',    72, 'Pass'),
(3, 'Rohan',   '10-B', 'rohan@gmail.com',   48, 'Fail'),
(4, 'Meena',   '10-B', 'meena@gmail.com',   91, 'Pass'),
(5, 'Karthik', '10-A', 'karthik@gmail.com', 66, 'Pass'),
(6, 'Sneha',   '10-C', 'sneha@gmail.com',   54, 'Pass'),
(7, 'Arjun',   '10-C', 'arjun@gmail.com',   39, 'Fail'),
(8, 'Priya',   '10-A', 'priya@gmail.com',   88, 'Pass'),
(9, 'Rahul',   '10-B', 'rahul@gmail.com',   57, 'Pass'),
(10,'Ananya',  '10-C', 'ananya@gmail.com',  93, 'Pass'),

(11,'Vikram',  '10-A', 'vikram@gmail.com',  44, 'Fail'),
(12,'Pooja',   '10-B', 'pooja@gmail.com',   61, 'Pass'),
(13,'Suresh',  '10-C', 'suresh@gmail.com',  70, 'Pass'),
(14,'Nisha',   '10-A', 'nisha@gmail.com',   82, 'Pass'),
(15,'Manoj',   '10-B', 'manoj@gmail.com',   35, 'Fail'),
(16,'Kavya',   '10-C', 'kavya@gmail.com',   90, 'Pass'),
(17,'Deepak',  '10-A', 'deepak@gmail.com',  58, 'Pass'),
(18,'Isha',    '10-B', 'isha@gmail.com',    76, 'Pass'),
(19,'Ajay',    '10-C', 'ajay@gmail.com',    49, 'Fail'),
(20,'Neha',    '10-A', 'neha@gmail.com',    67, 'Pass');

SELECT * FROM stud_details