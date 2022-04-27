-- SET CONFIG FOR THIS WORKSHEET
USE ROLE SECURITYADMIN;
USE WAREHOUSE COMPUTE_WH;


-- CREATE USERS
CREATE USER IF NOT EXISTS
MarketingManager
password = 'marketing@pass'
default_role = PUBLIC;

CREATE USER IF NOT EXISTS
FinanceManager
password = 'finance@pass'
default_role = PUBLIC;

CREATE USER IF NOT EXISTS
GlobalManager
password = 'globalmanager@pass'
default_role = PUBLIC;

CREATE USER IF NOT EXISTS
RegionManager1
password = 'region1@pass'
default_role = PUBLIC;

CREATE USER IF NOT EXISTS
RegionManager2
password = 'region2@pass'
default_role = PUBLIC;

CREATE USER IF NOT EXISTS
marketinguser
password = 'mkt@user'
default_role =PUBLIC;

-- DISPLAY USERS AND DEFAULT ROLES
SHOW USERS;

--CREATE ROLES
CREATE ROLE IF NOT EXISTS
REGIONMANAGER;

CREATE ROLE IF NOT EXISTS
GLOBALMANAGER;

CREATE ROLE IF NOT EXISTS
MANAGER;

CREATE ROLE IF NOT EXISTS
MRK_ROLE;

CREATE ROLE IF NOT EXISTS
FNC_ROLE;

SHOW ROLES;

--ASSIGNE ROLE TO USER
GRANT ROLE REGIONMANAGER TO USER REGIONMANAGER1;
GRANT ROLE REGIONMANAGER TO USER REGIONMANAGER2;
GRANT ROLE GLOBALMANAGER TO USER GLOBALMANAGER;

GRANT ROLE MRK_ROLE TO USER MARKETINGMANAGER;
GRANT ROLE MRK_ROLE TO ROLE MANAGER;

GRANT ROLE MANAGER TO USER FINANCEMANAGER;
GRANT ROLE FNC_ROLE TO ROLE MANAGER;

