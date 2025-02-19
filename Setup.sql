-- Setup Scripts for Review Analyzer
-- Initialize App for First Time Use - This is a one-time activity.
-- This is the mandatory step for first time initialization of the app.

-- 1. Use Role
USE ROLE ACCOUNTADMIN;

-- 2. Create and use DATABASE and schema
CREATE DATABASE REVIEW_ANALYZER_DB;
USE REVIEW_ANALYZER_DB;

--3. Create schema
CREATE SCHEMA REVIEW_ANALYZER_DB.OUTPUT


-- 4. GRANT ALL NECESSARY PRIVILEGES FOR THE ABOVE CREATED TABLE TO BE USED IN THE APP.
GRANT ALL PRIVILEGES ON DATABASE REVIEW_ANALYZER_DB TO APPLICATION REVIEW_ANALYZER;
GRANT ALL PRIVILEGES ON SCHEMA REVIEW_ANALYZER_DB.PUBLIC TO APPLICATION REVIEW_ANALYZER;
GRANT ALL PRIVILEGES ON SCHEMA REVIEW_ANALYZER_DB.OUTPUT TO APPLICATION REVIEW_ANALYZER;

-- 5. GRANT NECESSARY PRIVILEGES FOR TABLES WHICH WILL BE CREATED IN FUTURE.
GRANT SELECT, INSERT, TRUNCATE, UPDATE, DELETE ON ALL TABLES IN SCHEMA REVIEW_ANALYZER_DB.PUBLIC TO ROLE ACCOUNTADMIN;
GRANT SELECT, INSERT, TRUNCATE, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA REVIEW_ANALYZER_DB.PUBLIC TO ROLE ACCOUNTADMIN;
GRANT SELECT, INSERT, TRUNCATE, UPDATE, DELETE ON ALL TABLES IN SCHEMA REVIEW_ANALYZER_DB.OUTPUT TO ROLE ACCOUNTADMIN;
GRANT SELECT, INSERT, TRUNCATE, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA REVIEW_ANALYZER_DB.OUTPUT TO ROLE ACCOUNTADMIN;