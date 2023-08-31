-- double quote for column name, the rest is single quote

-- count
-- all the rows (including null)
SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price;
-- not including null
SELECT COUNT(high)
  FROM tutorial.aapl_historical_stock_price;
SELECT COUNT(date) AS count_of_date
  FROM tutorial.aapl_historical_stock_price;

-- sum
-- aggregators only aggregate vertically. 
-- If you want to perform a calculation across rows, you would do this with simple arithmetic.
SELECT SUM(volume)
  FROM tutorial.aapl_historical_stock_price

-- min, max
-- MIN will return the lowest number, 
-- earliest date, or non-numerical value as close alphabetically to "A" as possible.
SELECT MIN(volume) AS min_volume,
       MAX(volume) AS max_volume
  FROM tutorial.aapl_historical_stock_price

-- avg
-- First, it can only be used on numerical columns. 
-- Second, it ignores nulls completely
SELECT AVG(high)
  FROM tutorial.aapl_historical_stock_price

-- group by
-- SQL evaluates the aggregations before the LIMIT clause
SELECT year,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year;
SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month;
SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY month, year;

-- having
SELECT year,
       month,
       MAX(high) AS month_high
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
HAVING MAX(high) > 400
 ORDER BY year, month;


--Query clause order
-- SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY

