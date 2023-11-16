SELECT candidate_id
FROM candidates
WHERE lower(skill) IN ('python', 'tableau', 'postgresql')
GROUP BY candidate_id
HAVING COUNT(skill)=3 
ORDER BY candidate_id;
