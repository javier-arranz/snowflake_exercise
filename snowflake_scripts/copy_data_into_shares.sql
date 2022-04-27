USE ROLE SYSADMIN;
USE DATABASE RAW_DATA;
USE SCHEMA SALES;

--TRUNCATE ALL TABLES BEFORE INSERTING NEW DATA
TRUNCATE TABLE CUSTOMERS;
TRUNCATE TABLE EMPLOYEES;
TRUNCATE TABLE MANAGERS;
TRUNCATE TABLE STORES;
TRUNCATE TABLE TRANSACTIONS;

--COPY DATA INTO SHARE
COPY INTO "RAW_DATA"."SALES"."CUSTOMERS"
FROM
@S3_RAW_DATA/customers.csv
FILE_FORMAT = "RAW_DATA"."SALES"."CSV_FACTS"
ON_ERROR = 'skip_file';

COPY INTO "RAW_DATA"."SALES"."EMPLOYEES"
FROM
@S3_RAW_DATA/employees.csv
FILE_FORMAT = "RAW_DATA"."SALES"."CSV_FACTS"
ON_ERROR = 'skip_file';

COPY INTO "RAW_DATA"."SALES"."MANAGERS"
FROM
@S3_RAW_DATA/managers.csv
FILE_FORMAT = "RAW_DATA"."SALES"."CSV_FACTS"
ON_ERROR = 'skip_file';

COPY INTO "RAW_DATA"."SALES"."PRODUCTS"
FROM
@S3_RAW_DATA/products.csv
FILE_FORMAT = "RAW_DATA"."SALES"."CSV_FACTS"
ON_ERROR = 'skip_file';

COPY INTO "RAW_DATA"."SALES"."STORES"
FROM
@S3_RAW_DATA/stores.csv
FILE_FORMAT = "RAW_DATA"."SALES"."CSV_FACTS"
ON_ERROR = 'skip_file';

COPY INTO "RAW_DATA"."SALES"."TRANSACTIONS"
FROM
@S3_RAW_DATA/transactions/
FILE_FORMAT = "RAW_DATA"."SALES"."JSON_TRANSACTIONS"
ON_ERROR = 'skip_file';