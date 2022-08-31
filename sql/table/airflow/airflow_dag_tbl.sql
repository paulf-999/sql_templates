!SET variable_substitution=true;
USE ROLE &{PROGRAM}_&{ENV}_DATA_LOADER;
USE WAREHOUSE &{PROGRAM}_&{ENV}_LOADING_WH;
USE DATABASE &{PROGRAM}_&{ENV}_RAW_DB;
USE SCHEMA UTILITIES;

CREATE TABLE IF NOT EXISTS AIRFLOW_DAG (
    DAG_NAME VARCHAR
    , TARGET_TBL VARCHAR
    , DAG_SCHEDULE VARCHAR
    , LAST_DAG_RUN VARCHAR
    , NEXT_DAG_RUN VARCHAR
    , QUERY_TS TIMESTAMP_NTZ
);