--check if ur an admin
/** SELECT SUSER_NAME();
SELECT USER_NAME();
SELECT IS_SRVROLEMEMBER('sysadmin'); **/

--Support Team Column Restriction ; Goal: Can update email, not marks.
USE practice;
-- CREATE ROLE support_role;

-- Grant column-level UPDATE
GRANT UPDATE (email)
ON stud_details
TO support_role;

--Create users
--CREATE LOGIN support1 WITH PASSWORD ='Support@123';
-- CREATE LOGIN support2 WITH PASSWORD ='Support2@123';

--create logins 
 /** CREATE USER support1 FOR LOGIN support1;
CREATE USER support2 FOR LOGIN support2; **/


-- Assign role to users
ALTER ROLE  support_role ADD MEMBER  support1;
ALTER ROLE support_role ADD MEMBER support2;



