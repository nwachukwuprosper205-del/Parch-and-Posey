SELECT *
FROM accounts;
SELECT *
FROM orders;
SELECT *
FROM region;
SELECT *
FROM sales_reps;
SELECT *
FROM web_events;


-- total sales (total revenue)
SELECT SUM(total_amt_usd) AS total_sales
FROM orders;

-- total qty sold
SELECT SUM(total) AS total_qty
FROM orders;

-- avg price figuring it out
SELECT* FROM orders;

SELECT standard_qty, standard_amt_usd                                   
FROM orders
WHERE standard_qty = 85;

SELECT 
AVG(standard_amt_usd) AS standard_avg_price,
AVG(gloss_amt_usd) AS gloss_avg_price,
AVG(poster_amt_usd) AS poster_avg_price
FROM orders;

 -- total num of orders
SELECT COUNT(id) AS total_orders FROM orders;
SELECT COUNT(DISTINCT id) AS total_orders FROM orders;

-- total number of products = 3
SELECT standard_qty, gloss_qty, poster_qty
FROM orders;

-- total numbers of customers 
SELECT COUNT(DISTINCT name) AS total_customers
FROM  sales_reps;

-- total numbers of qty bought
SELECT COUNT(DISTINCT standard_qty, gloss_qty, poster_qty)
FROM orders;


-- Generate a Report that shows all key metrics of the business
SELECT * FROM orders;

SELECT 'Total sales' AS measure_name, SUM(total_amt_usd) AS measure_value FROM orders
UNION ALL
SELECT 'Total qty' AS measure_name, COUNT(DISTINCT standard_qty, gloss_qty, poster_qty) AS measure_value FROM orders
UNION ALL
SELECT 'Average Price' AS measure_name, AVG(total_amt_usd) AS measure_value FROM orders
UNION ALL
SELECT 'Total num. orders' AS measure_name, COUNT(id) AS measure_value FROM orders
UNION ALL
SELECT 'Total num. Customers' AS measure_name, COUNT(DISTINCT name) AS measure_value FROM sales_reps;

SELECT 
MAX(total_amt_usd) AS max_spend,
MIN(total_amt_usd) AS min_spend,
AVG(total_amt_usd) AS max_spend
FROM orders;

-- Check volume + time range
SELECT COUNT(*) 
FROM orders;

-- first and last order
SELECT MIN(occurred_at), MAX(occurred_at)
FROM orders;

SELECT *
FROM orders;

SELECT COUNT(DISTINCT id) AS total_transactions,
		COUNT(DISTINCT account_id) AS unique_customers, 
        SUM(total_amt_usd) AS total_revenue,
        SUM(total_amt_usd)/COUNT(DISTINCT id) AS avg_basket_size
FROM orders;


-- Nulls / cleaning
SELECT 
COUNT(*) - COUNT(id) AS null_ids,
COUNT(*) - COUNT(account_id) AS null_accounts,
COUNT(*) - COUNT(occurred_at) AS null_dates
FROM orders;

-- Product mix
SELECT standard_qty, gloss_qty, poster_qty, standard_amt_usd, gloss_amt_usd, poster_amt_usd
FROM orders;

SELECT 
SUM(standard_qty) AS total_standard_qty,
SUM(gloss_qty) AS total_gloss_qty,
SUM(poster_qty) AS total_poster_qty,
SUM(standard_amt_usd) AS total_standard_usd,
SUM(gloss_amt_usd) AS total_gloss_usd,
SUM(poster_amt_usd) AS total_poster_usd
FROM orders;

SELECT 
SUM(standard_amt_usd) / SUM(standard_qty) AS Avg_standard,
SUM(gloss_amt_usd) / SUM(gloss_qty) AS Avg_gloss,
SUM(poster_amt_usd) / SUM(poster_qty) AS Avg_poster
FROM orders;

SELECT 
COUNT(DISTINCT standard_qty) AS total_standard_qty 
FROM orders;

-- MAGNITUDE Analyses 
-- total customers by regions

SELECT * FROM sales_reps;
SELECT * FROM region;

SELECT r.name AS region_name, COUNT(a.id) AS total_customers
FROM accounts a
JOIN sales_reps s
	ON a.sales_rep_id = s.id
JOIN region r
	ON s.region_id = r.id
GROUP BY r.name
ORDER BY total_customers DESC;

-- WHICH region is generating the most revenue 
SELECT * FROM orders;
SELECT * FROM accounts;
SELECT * FROM sales_reps;
SELECT * FROM region;

SELECT 
	r.name AS region_name,
	SUM(o.total_amt_usd) AS total_revenue
FROM orders AS o
JOIN accounts AS a 
	ON o.account_id = a.id
JOIN sales_reps AS s 
	ON a.sales_rep_id = s.id
JOIN region AS r 
	ON s.region_id = r.id 
GROUP BY r.name
ORDER BY total_revenue DESC;

-- which marketing channels are driving customers acquision 
SELECT* FROM web_events;

SELECT 
	channel,
    COUNT(DISTINCT account_id) AS unique_customers_reached,
    COUNT(*) AS total_interactions
FROM web_events
GROUP BY channel
ORDER BY unique_customers_reached DESC;

-- Are there registered accounts that have never placed an order?
SELECT 
	a.id,
    a.name
FROM accounts AS a
LEFT JOIN orders AS o 
	ON a.id = o.account_id
WHERE o.id IS NULL;


SELECT* FROM web_events;
SELECT* FROM orders;

SELECT 
	channel, COUNT(*) AS event_count
FROM web_events AS web
JOIN orders AS o
	ON web.account_id = o.account_id
GROUP BY channel
ORDER BY event_count DESC;




SELECT 
MIN(total_amt_usd),
MAX(total_amt_usd)
FROM orders;