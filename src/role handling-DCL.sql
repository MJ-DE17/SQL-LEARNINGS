-- role handling 

SELECT r.name AS role_name , m.name AS member_name 
FROM sys.database_role_members drm
JOIN sys.database_principals r ON drm.role_principal_id = r.principal_id
JOIN sys.database_principals m ON drm.member_principal_id = m.principal_id
WHERE r.name = 'support_role';

UPDATE stud_details
SET email = 'support1@test.com'
WHERE stud_ID = 2;

SELECT * FROM stud_details 
SELECT
    SUSER_NAME() AS login_name,
    USER_NAME()  AS db_user,
    IS_SRVROLEMEMBER('sysadmin') AS is_sysadmin;
