SELECT
    purchase_id
    , purchase_date
    , amount
    , SUM(amount) OVER
        (ORDER BY purchase_date ASC) AS total_sum
FROM purchases