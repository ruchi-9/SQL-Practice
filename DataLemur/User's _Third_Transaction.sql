With Transaction_cte AS(
  Select *,row_number() over (PARTITION BY user_id 
order by transaction_date) as rank
from transactions)
  
SELECT user_id,spend, transaction_date
FROM Transaction_cte
where rank=3;
