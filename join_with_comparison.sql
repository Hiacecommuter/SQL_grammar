--- only joins rows that fit the investments.funded_year > companies.founded_year + 5 condition
SELECT companies.permalink,
       companies.name,
       companies.status,
       COUNT(investments.investor_permalink) AS investors
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_investments_part1 investments
    ON companies.permalink = investments.company_permalink
   AND investments.funded_year > companies.founded_year + 5
 GROUP BY 1,2, 3

--- joining all rows and then filtering
SELECT companies.permalink,
       companies.name,
       companies.status,
       COUNT(investments.investor_permalink) AS investors
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_investments_part1 investments
    ON companies.permalink = investments.company_permalink
 WHERE investments.funded_year > companies.founded_year + 5
 GROUP BY 1,2, 3

-- cross join
select * from A, B;

-- You join two tables by creating a relationship in the WHERE clause 
-- between at least one column from one table and at least one column from another. 
-- two tables
SELECT order_num, lname, fname FROM customer, orders
   WHERE customer.customer_num = orders.customer_num;

-- multiple tables
SELECT DISTINCT company, stock_num, manu_code
   FROM customer c, orders o, items i
   WHERE c.customer_num = o.customer_num
      AND o.order_num = i.order_num;

-- self joins
SELECT x.stock_num, x.manu_code, y.stock_num, y.manu_code
   FROM stock x, stock y WHERE x.unit_price > 2.5 * y.unit_price;
