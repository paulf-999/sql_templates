# SQL Query Optimization Techniques

## 1. `SELECT` fields instead of using `SELECT *`

When running exploratory queries, many SQL developers use `SELECT *` (read as “select all”) as a shorthand to query all available data from a table. However, if a table has many fields and many rows, this taxes database resources by querying a lot of unnecessary data.

Using the `SELECT` statement will point the database to querying only the data you need to meet the business requirements. Here’s an example where the business requirements request mailing addresses for customers.

**Inefficient**

```SQL
SELECT *
FROM Customers
```

This query may pull in other data also stored in the customer table, such as phone numbers, activity dates, and notes from sales and customer service.

**Efficient**

```SQL
SELECT FirstName, LastName, Address, City, State, Zip
FROM Customers
```

This query is much cleaner and only pulls the required information for mailing addresses.

To keep an index of all tables and field names, run a query from a system table such as `INFORMATION_SCHEMA`.

## 2. Avoid `SELECT DISTINCT`

`SELECT DISTINCT` is a handy way to remove duplicates from a query. `SELECT DISTINCT` works by GROUPing all fields in the query to create distinct results. To accomplish this goal however, a large amount of processing power is required. Additionally, data may be grouped to the point of being inaccurate. To avoid using `SELECT DISTINCT`, select more fields to create unique results.

**Inefficient and inaccurate**

```SQL
SELECT DISTINCT FirstName, LastName, State
FROM Customers
```

This query doesn’t account for multiple people in the same state having the same first and last name. Popular names such as David Smith or Diane Johnson will be grouped together, causing an inaccurate number of records. In larger databases, a large number of David Smiths and Diane Johnsons will cause this query to run slowly.

**Efficient and accurate**

```SQL
SELECT FirstName, LastName, Address, City, State, Zip
FROM Customers
```

By adding more fields, unduplicated records were returned without using `SELECT DISTINCT`. The database does not have to group any fields, and the number of records is accurate.

## 3. Create joins with `INNER JOIN` (not `WHERE`)

Some SQL developers prefer to make joins with WHERE clauses, such as the following:

```SQL
SELECT Customers.CustomerID, Customers.Name, Sales.LastSaleDate
FROM Customers, Sales
WHERE Customers.CustomerID = Sales.CustomerID
```

This type of join creates a Cartesian Join, also called a Cartesian Product or `CROSS JOIN`.

In a Cartesian Join, all possible combinations of the variables are created. In this example, if we had 1,000 customers with 1,000 total sales, the query would first generate 1,000,000 results, then filter for the 1,000 records where CustomerID is correctly joined. This is an inefficient use of database resources, as the database has done 100x more work than required. Cartesian Joins are especially problematic in large-scale databases, because a Cartesian Join of two large tables could create billions or trillions of results.

To prevent creating a Cartesian Join, use `INNER JOIN` instead:

```SQL
SELECT Customers.CustomerID, Customers.Name, Sales.LastSaleDate
FROM Customers
   INNER JOIN Sales
   ON Customers.CustomerID = Sales.CustomerID
```

The database would only generate the 1,000 desired records where CustomerID is equal.

Some DBMS systems are able to recognize `WHERE` joins and automatically run them as `INNER JOINs` instead. In those DBMS systems, there will be no difference in performance between a `WHERE` join and `INNER JOIN`. However, `INNER JOIN` is recognized by all DBMS systems. Your DBA will advise you as to which is best in your environment.

## 4. Use `WHERE` instead of `HAVING` to define filters

The goal of an efficient query is to pull only the required records from the database. Per the SQL Order of Operations, `HAVING` statements are calculated after `WHERE` statements. If the intent is to filter a query based on conditions, a `WHERE` statement is more efficient.

For example, let’s assume 200 sales have been made in the year 2016, and we want to query for the number of sales per customer in 2016.

```SQL
SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
FROM Customers
   INNER JOIN Sales
   ON Customers.CustomerID = Sales.CustomerID
GROUP BY Customers.CustomerID, Customers.Name
HAVING Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
```

This query would pull 1,000 sales records from the Sales table, then filter for the 200 records generated in the year 2016, and finally count the records in the dataset.

In comparison, `WHERE` clauses limit the number of records pulled:

```SQL
SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
FROM Customers
  INNER JOIN Sales
  ON Customers.CustomerID = Sales.CustomerID
WHERE Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
GROUP BY Customers.CustomerID, Customers.Name
```

This query would pull the 200 records from the year 2016, and then count the records in the dataset. The first step in the `HAVING` clause has been completely eliminated.

`HAVING` should only be used when filtering on an aggregated field. In the query above, we could additionally filter for customers with greater than 5 sales using a `HAVING` statement.

```SQL
SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
FROM Customers
   INNER JOIN Sales
   ON Customers.CustomerID = Sales.CustomerID
WHERE Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
GROUP BY Customers.CustomerID, Customers.Name
HAVING Count(Sales.SalesID) > 5
```

## 5. Use wildcards at the end of a phrase only

When searching plaintext data, such as cities or names, wildcards create the widest search possible. However, the widest search is also the most inefficient search.

When a leading wildcard is used, especially in combination with an ending wildcard, the database is tasked with searching all records for a match anywhere within the selected field.

Consider this query to pull cities beginning with ‘Char’:

```SQL
SELECT City FROM Customers
WHERE City LIKE ‘%Char%’
```

This query will pull the expected results of Charleston, Charlotte, and Charlton. However, it will also pull unexpected results, such as Cape Charles, Crab Orchard, and Richardson.

A more efficient query would be:

```SQL
SELECT City FROM Customers
WHERE City LIKE ‘Char%’
```

This query will pull only the expected results of Charleston, Charlotte, and Charlton.

## 6. Use `LIMIT` to sample query results

Before running a query for the first time, ensure the results will be desirable and meaningful by using a `LIMIT` statement. (In some DBMS systems, the word TOP is used interchangeably with `LIMIT`.) The `LIMIT` statement returns only the number of records specified. Using a `LIMIT` statement prevents taxing the production database with a large query, only to find out the query needs editing or refinement.

In the 2016 sales query from above, we will examine a limit of 10 records:

```SQL
SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
FROM Customers
  INNER JOIN Sales
  ON Customers.CustomerID = Sales.CustomerID
WHERE Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
GROUP BY Customers.CustomerID, Customers.Name
LIMIT 10
```

We can see by the sample whether we have a useable data set or not.
