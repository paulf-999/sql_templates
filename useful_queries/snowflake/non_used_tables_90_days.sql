-- query to show tables not being queried in last 90 days (change line 10 to define a different time period)
WITH tables_recent AS (

    SELECT f1.value:"objectName"::string AS tn
    FROM snowflake.account_usage.access_history AS access_history
    , LATERAL FLATTEN(base_objects_accessed) AS f1
    WHERE
        f1.value:"objectDomain"::string = 'Table'
        AND f1.value:"objectId" IS NOT NULL
        AND access_history.query_start_time >= DATEADD('day', -90, CURRENT_TIMESTAMP())
    GROUP BY 1
)

, tables_all AS (

    SELECT
        table_id::integer AS tid
        , table_catalog || '.' || table_schema || '.' || table_name AS tn1
    FROM snowflake.account_usage.tables
    WHERE deleted IS NULL
)

SELECT *
FROM tables_all
WHERE tn1 NOT IN (
    SELECT tn FROM tables_recent
);
