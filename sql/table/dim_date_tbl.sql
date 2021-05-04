CREATE VIEW IF NOT EXISTS DIM_DATE AS (
    WITH date_seq AS (
        SELECT DATEADD(DAY, SEQ4(), '2017-01-01') AS my_date
        FROM TABLE (GENERATOR(ROWCOUNT => 4000))
    )
    SELECT  TO_DATE(my_date)        AS forecast_date
            , TO_TIMESTAMP(my_date) AS datetime
            , YEAR(my_date)         AS year
            , MONTH(my_date)        AS month
            , MONTHNAME(my_date)    AS monthname
            , DAY(my_date)          AS day
            , DAYOFWEEK(my_date)    AS dayofweek
            , WEEKOFYEAR(my_date)   AS weekofyear
            , DAYOFYEAR(my_date)    AS dayofyear
    FROM date_seq
);
