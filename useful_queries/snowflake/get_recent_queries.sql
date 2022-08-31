SELECT  CONVERT_TIMEZONE('Australia/Melbourne', start_time)::timestamp_ntz AS start_time
        , query_text
        , error_message
        , *
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
-- the 2 statements below are optional, but will speed up the query
WHERE user_name = '<username here>'
    AND execution_status = '<status here>'
ORDER BY snowflake.account_usage.query_history.start_time DESC
LIMIT 30;
