SELECT year(date) year, round(avg(volume), 2) volume
from aapl
group by year 
order by year