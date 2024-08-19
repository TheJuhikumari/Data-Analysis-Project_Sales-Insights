# 1. Show all customer records

SELECT * FROM customers;

# 1. Show total number of customers

SELECT count(*) FROM customers;

# 1. Show transactions for Chennai market (market code for chennai is Mark001

SELECT * FROM transactions where market_code='Mark001';

# 1. Show distrinct product codes that were sold in chennai

SELECT distinct product_code FROM transactions where market_code='Mark001';

# 1. Show transactions where currency is US dollars

SELECT * from transactions where currency="USD";

# 1. Show transactions in 2020 join by date table

SELECT 
    transactions.*, dates.*
FROM
    transactions
        INNER JOIN
    dates ON transactions.order_date = dates.order_date
WHERE
    dates.years = 2020;


# 1. Show total revenue in year 2020

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    dates ON transactions.order_date = dates.order_date
WHERE
    dates.years = 2020
        AND transactions.currency = 'INR'
        OR transactions.currency = 'USD';
	
# 1. Show total revenue in year 2020, January Month

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    dates ON transactions.order_date = dates.order_date
WHERE
    dates.years = 2020
        AND dates.month_name = 'January'
        AND (transactions.currency = 'INR'
        OR transactions.currency = 'USD');

# 1. Show total revenue in year 2020 in Chennai

SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    dates ON transactions.order_date = dates.order_date
WHERE
    dates.years = 2020
        AND transactions.market_code = 'Mark001';