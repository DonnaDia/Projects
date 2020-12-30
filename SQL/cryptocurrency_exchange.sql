-- check table contents 
SELECT * FROM transactions limit 5;
-- check total income
select sum(money_in) from transactions;
-- check total outcome
select sum(money_out) from transactions;
-- check total income transactions
select count(money_in) from transactions;

-- check total income transactions in Bitcoins
select sum(money_in)
from transactions
where currency = 'BIT';
-- check largest amount of transactions
select max(money_in) as max_in,
max(money_out) as max_out
from transactions;
-- check average income transactions in Ethereum
select avg(money_in)
from transactions
where currency = 'ETH';

-- building a Ledger
select date, avg(money_in), 
             avg(money_out)
from transactions
group by date;

-- building a readable Ledger
SELECT date AS 'Date', 
   ROUND(AVG(money_in), 2) AS 'Average Buy',
   ROUND(AVG(money_out), 2) AS 'Average Sell'
FROM transactions
GROUP BY date;
