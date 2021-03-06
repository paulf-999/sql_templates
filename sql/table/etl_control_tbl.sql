CREATE TABLE IF NOT EXISTS ETL_CONTROL_TABLE (
    JOB_NAME VARCHAR(100)
    , TABLE_NAME VARCHAR(100)
    , JOB_STATUS VARCHAR(100)
    , START_TIME TIMESTAMP_NTZ(9)
    , END_TIME TIMESTAMP_NTZ(9)
    , ROWS_INSERTED NUMBER(38, 0)
    , DURATION NUMBER(38, 0)
    , STAGE_TIME NUMBER(38, 0)
    , LOAD_TIME NUMBER(38, 0)
);
