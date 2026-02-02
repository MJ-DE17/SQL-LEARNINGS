USE practice

GRANT UPDATE 
ON stud_details
TO support_role

ALTER ROLE support_role ADD MEMBER support1;
ALTER ROLE support_role ADD MEMBER support2;

-- Verify role membership
SELECT r.name AS role_name, m.name AS member_name
FROM sys.database_role_members drm
JOIN sys.database_principals r ON drm.role_principal_id = r.principal_id
JOIN sys.database_principals m ON drm.member_principal_id = m.principal_id
WHERE r.name = 'support_role';


SELECT
    SUSER_NAME(),
    USER_NAME(),
    IS_SRVROLEMEMBER('sysadmin');
