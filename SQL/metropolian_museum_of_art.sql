-- checking the table structure
/*
 SELECT *
FROM met
LIMIT 5;
*/

-- checking the total amount of items
select count(*) from met;

-- checking the total amount with celery
select count(*) from met
where category like "%celery%";

-- checking the oldest date
-- select min(date) from met;

-- checking the oldest items
select date, title, medium
from met
where date like '%1600%'
limit 10;

-- checking the top amount of items per location
select country, count(*) as total
from met
group by 1
order by 2 desc
limit 10;

-- checking amount of items whithin the category
select category, count(*) as total
from met
group by 1
having total > 100
order by 2 desc;

-- checking amount of heavy metal in the items
select medium, count(*) as precious
from met
where medium like "$gold%"
   or medium like "%silver%"
group by medium
order by 2 desc
limit 5;

-- checking total amount of heavy metal in the items
SELECT CASE
   WHEN medium LIKE '%gold%'   THEN 'Gold'
   WHEN medium LIKE '%silver%' THEN 'Silver'
   ELSE NULL
  END AS 'Bling',
  COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
