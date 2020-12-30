/* checking amount of users answering every question */
SELECT question, count(distinct(user_id))
FROM survey
where response is not null
group by 1;

/* checking whether users with 5 free pairs bought more that users with 3 free pairs*/
SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
LIMIT 10;
