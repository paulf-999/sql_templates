SELECT
    purchase_id
    , amount
    , RANK() OVER (ORDER BY amount desc)
FROM purchases