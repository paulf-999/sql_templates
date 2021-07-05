!SET variable_substitution=true;
--define the role hierarchy
USE ROLE SECURITYADMIN;
GRANT ROLE &{PROGRAM}_DBA TO ROLE SYSADMIN;
GRANT ROLE &{PROGRAM}_DBT_SVC TO ROLE &{PROGRAM}_DBA;
GRANT ROLE &{PROGRAM}_DEVELOPER TO ROLE &{PROGRAM}_DBA;
GRANT ROLE &{PROGRAM}_ANALYST TO ROLE &{PROGRAM}_DBA;
GRANT ROLE &{PROGRAM}_VISUALISER TO ROLE &{PROGRAM}_ANALYST;

--grant &{PROGRAM}_SF_TASK_ADMIN, &{PROGRAM}_SF_STAGE_ADMIN and &{PROGRAM}_SF_SI_ADMIN roles to &{PROGRAM}_DBA
GRANT ROLE &{PROGRAM}_SF_TASK_ADMIN TO ROLE &{PROGRAM}_DBA;
GRANT ROLE &{PROGRAM}_SF_STAGE_ADMIN TO ROLE &{PROGRAM}_DBA;
GRANT ROLE &{PROGRAM}_SF_SI_ADMIN TO ROLE &{PROGRAM}_DBA;

--developer role permissions
--1. DEVELOPER role is required to load new data into Snowflake (i.e. be assigned the data_loader role)
GRANT ROLE &{PROGRAM}_DATA_LOADER TO ROLE &{PROGRAM}_DEVELOPER;
--2. DATA_LOADER role is required to create new Snowflake tasks (i.e. be assigned the SF_TASK_ADMIN role)
GRANT ROLE &{PROGRAM}_SF_TASK_ADMIN TO ROLE &{PROGRAM}_DATA_LOADER;
