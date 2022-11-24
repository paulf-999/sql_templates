-- query to show tables not being queried in last 90 days (change line 10 to define a different time period)
WITH tables_recent AS (

    SELECT flattend_tbl_obj.value:objectName::string AS table_namespace_recent
    FROM snowflake.account_usage.access_history AS access_history
    , LATERAL FLATTEN(base_objects_accessed) AS flattend_tbl_obj
    WHERE
        TO_VARCHAR(flattend_tbl_obj.value:objectDomain) = 'Table'
        AND flattend_tbl_obj.value:objectId IS NOT NULL
        AND access_history.query_start_time >= DATEADD('day', -90, CURRENT_TIMESTAMP())
    GROUP BY 1
)

, tables_all AS (

    SELECT
        table_id::integer AS table_id
        , table_catalog AS db
        , table_schema AS table_schema
        , table_name
        , table_catalog || '.' || table_schema || '.' || table_name AS tbl_namespace
    FROM snowflake.account_usage.tables
    WHERE deleted IS NULL
)

SELECT
    table_id
    , tbl_namespace
    , db
    , table_schema
    , table_name
FROM tables_all
WHERE tbl_namespace NOT IN (
    SELECT table_namespace_recent FROM tables_recent
);
