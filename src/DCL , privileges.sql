USE practice

-- Create the User not works in server engine 
/** CREATE USER report_user IDENTIFIED BY report123;
GRANT SELECT 
ON stud_details 
TO report_user; **/

-- crete login req wiith password
/**
CREATE LOGIN report_user
WITH PASSWORD = 'ssms@1234'
**/

-- creaet users
/** CREATE USER report_user
FOR LOGIN report_user; **/

--provide the privilagees
/** GRANT SELECT 
ON stud_details
TO report_user; **/

-- SELECT * FROM stud_details;

UPDATE stud_details SET marks = 90;
SELECT * FROM stud_details;