with


# Import CTEs

These should stay very simple. E.g.,

base_customers as AS (

    SELECT * FROM customers

),


# Logical CTEs

customers AS (
    SELECT first_name || ' ' || last_name AS name,
    *
    FROM base_customers
)

# Final CTE

# Simple Select Statement