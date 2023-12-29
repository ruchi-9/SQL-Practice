--Step 1: Retrieve the song counts for the 10 artists
--Step 2: Rank the artists based on song appearances in the top 10 chart
--Step 3: Retrieve the top 5 ranked artists along with their ranks

with CTE as(Select artist_name, dense_rank() over ( order by count(S.song_id) desc ) as Artist_rank
from artists A inner join songs S on S.artist_id=A.artist_id
 inner join global_song_rank G on G.song_id=S.song_id
Where  G.rank<=10
GROUP BY artist_name)

SElect artist_name, Artist_rank
from cte 
where Artist_rank<=5;
